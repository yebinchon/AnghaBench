
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct op_msrs {TYPE_1__* controls; } ;
struct TYPE_2__ {int addr; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int num_counters ;
 int op_amd_start_ibs () ;
 size_t op_x86_phys_to_virt (int) ;
 int rdmsrl (int ,int ) ;
 int * reset_value ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void op_amd_start(struct op_msrs const * const msrs)
{
 u64 val;
 int i;

 for (i = 0; i < num_counters; ++i) {
  if (!reset_value[op_x86_phys_to_virt(i)])
   continue;
  rdmsrl(msrs->controls[i].addr, val);
  val |= ARCH_PERFMON_EVENTSEL_ENABLE;
  wrmsrl(msrs->controls[i].addr, val);
 }

 op_amd_start_ibs();
}
