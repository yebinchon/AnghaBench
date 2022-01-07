
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int DTCN0 ;
 int __raw_readl (int ) ;

__attribute__((used)) static cycle_t cf_dt_get_cycles(struct clocksource *cs)
{
 return __raw_readl(DTCN0);
}
