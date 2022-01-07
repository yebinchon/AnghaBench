
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finish ) () ;} ;


 TYPE_1__* pxa_cpu_pm_fns ;
 int stub1 () ;

void pxa_pm_finish(void)
{
 if (pxa_cpu_pm_fns && pxa_cpu_pm_fns->finish)
  pxa_cpu_pm_fns->finish();
}
