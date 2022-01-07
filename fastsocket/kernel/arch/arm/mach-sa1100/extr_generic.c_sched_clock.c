
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSCR ;
 unsigned long long cnt32_to_63 (int ) ;
 int do_div (unsigned long long,int) ;

unsigned long long sched_clock(void)
{
 unsigned long long v = cnt32_to_63(OSCR);


 v *= 78125<<1;
 do_div(v, 288<<1);

 return v;
}
