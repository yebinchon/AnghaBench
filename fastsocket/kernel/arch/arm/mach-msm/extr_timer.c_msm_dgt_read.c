
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 scalar_t__ MSM_DGT_BASE ;
 int MSM_DGT_SHIFT ;
 scalar_t__ TIMER_COUNT_VAL ;
 int readl (scalar_t__) ;

__attribute__((used)) static cycle_t msm_dgt_read(struct clocksource *cs)
{
 return readl(MSM_DGT_BASE + TIMER_COUNT_VAL) >> MSM_DGT_SHIFT;
}
