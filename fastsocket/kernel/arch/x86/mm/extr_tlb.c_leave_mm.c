
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_mm; int state; } ;


 int BUG () ;
 scalar_t__ TLBSTATE_OK ;
 TYPE_1__ cpu_tlbstate ;
 int cpumask_clear_cpu (int,int ) ;
 int load_cr3 (int ) ;
 int mm_cpumask (scalar_t__) ;
 scalar_t__ percpu_read (int ) ;
 int swapper_pg_dir ;

void leave_mm(int cpu)
{
 if (percpu_read(cpu_tlbstate.state) == TLBSTATE_OK)
  BUG();
 cpumask_clear_cpu(cpu,
     mm_cpumask(percpu_read(cpu_tlbstate.active_mm)));
 load_cr3(swapper_pg_dir);
}
