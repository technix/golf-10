#!/usr/bin/perl -an
$|=1;
(my$v=join('',@F[1..3,0]))=~s/[0@]/1/g;
$v=~s/#/0/g;
$g=$v&(($F[5]>0?1:0).($F[4]>0?1:0).($F[5]<0?1:0).($F[4]<0?1:0));
my$o=((my$i=index($g>0?$g:$v,1))>1?-1:1);
print(($i%2?$o.' 0':'0 '.$o)."\n");
