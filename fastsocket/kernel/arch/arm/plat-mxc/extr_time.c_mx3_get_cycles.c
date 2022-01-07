
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 scalar_t__ MX3_TCN ;
 int __raw_readl (scalar_t__) ;
 scalar_t__ timer_base ;

__attribute__((used)) static cycle_t mx3_get_cycles(struct clocksource *cs)
{
 return __raw_readl(timer_base + MX3_TCN);
}
