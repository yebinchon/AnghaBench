
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int SYS_TR (int ) ;
 int TIMER_CLOCKSOURCE ;
 int __raw_readl (int ) ;

__attribute__((used)) static cycle_t ns9360_clocksource_read(struct clocksource *cs)
{
 return __raw_readl(SYS_TR(TIMER_CLOCKSOURCE));
}
