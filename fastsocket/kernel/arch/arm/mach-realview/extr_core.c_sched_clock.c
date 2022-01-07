
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REALVIEW_REFCOUNTER ;
 int do_div (unsigned long long,int) ;
 scalar_t__ readl (int ) ;

unsigned long long sched_clock(void)
{
 unsigned long long v;

 v = (unsigned long long)readl(REALVIEW_REFCOUNTER) * 125;
 do_div(v, 3);

 return v;
}
