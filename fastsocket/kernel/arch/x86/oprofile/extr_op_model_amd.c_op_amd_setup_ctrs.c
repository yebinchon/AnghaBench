
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct op_x86_model_spec {int reserved; } ;
struct op_msrs {TYPE_2__* controls; TYPE_1__* counters; } ;
struct TYPE_7__ {scalar_t__ count; scalar_t__ enabled; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct TYPE_5__ {scalar_t__ addr; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int OP_MAX_COUNTER ;
 TYPE_3__* counter_config ;
 scalar_t__ ibs_caps ;
 int num_counters ;
 int op_x86_get_ctrl (struct op_x86_model_spec const*,TYPE_3__*) ;
 int op_x86_phys_to_virt (int) ;
 size_t op_x86_virt_to_phys (int) ;
 int op_x86_warn_in_use (int) ;
 int rdmsrl (scalar_t__,int) ;
 scalar_t__* reset_value ;
 int setup_APIC_ibs () ;
 int wrmsrl (scalar_t__,int) ;

__attribute__((used)) static void op_amd_setup_ctrs(struct op_x86_model_spec const *model,
         struct op_msrs const * const msrs)
{
 u64 val;
 int i;


 for (i = 0; i < OP_MAX_COUNTER; ++i) {
  if (counter_config[i].enabled
      && msrs->counters[op_x86_virt_to_phys(i)].addr)
   reset_value[i] = counter_config[i].count;
  else
   reset_value[i] = 0;
 }


 for (i = 0; i < num_counters; ++i) {
  if (!msrs->controls[i].addr)
   continue;
  rdmsrl(msrs->controls[i].addr, val);
  if (val & ARCH_PERFMON_EVENTSEL_ENABLE)
   op_x86_warn_in_use(i);
  val &= model->reserved;
  wrmsrl(msrs->controls[i].addr, val);




  wrmsrl(msrs->counters[i].addr, -1LL);
 }


 for (i = 0; i < num_counters; ++i) {
  int virt = op_x86_phys_to_virt(i);
  if (!reset_value[virt])
   continue;


  wrmsrl(msrs->counters[i].addr, -(u64)reset_value[virt]);


  rdmsrl(msrs->controls[i].addr, val);
  val &= model->reserved;
  val |= op_x86_get_ctrl(model, &counter_config[virt]);
  wrmsrl(msrs->controls[i].addr, val);
 }

 if (ibs_caps)
  setup_APIC_ibs();
}
