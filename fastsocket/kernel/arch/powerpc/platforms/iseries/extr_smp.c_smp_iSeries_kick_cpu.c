
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dyn_proc_status; } ;
struct TYPE_3__ {int cpu_start; } ;


 int BUG_ON (int) ;
 int NR_CPUS ;
 TYPE_2__* lppaca ;
 TYPE_1__* paca ;

__attribute__((used)) static void smp_iSeries_kick_cpu(int nr)
{
 BUG_ON((nr < 0) || (nr >= NR_CPUS));


 if (lppaca[nr].dyn_proc_status >= 2)
  return;






 paca[nr].cpu_start = 1;
}
