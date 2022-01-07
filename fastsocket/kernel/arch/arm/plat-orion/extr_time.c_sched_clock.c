
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long TCLK2NS_SCALE_FACTOR ;
 int TIMER0_VAL ;
 unsigned long long cnt32_to_63 (scalar_t__) ;
 scalar_t__ readl (int ) ;
 unsigned long long tclk2ns_scale ;

unsigned long long sched_clock(void)
{
 unsigned long long v = cnt32_to_63(0xffffffff - readl(TIMER0_VAL));
 return (v * tclk2ns_scale) >> TCLK2NS_SCALE_FACTOR;
}
