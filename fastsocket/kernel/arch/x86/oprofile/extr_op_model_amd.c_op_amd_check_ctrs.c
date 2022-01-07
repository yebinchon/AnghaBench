
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct op_msrs {TYPE_1__* counters; } ;
struct TYPE_2__ {int addr; } ;


 int OP_CTR_OVERFLOW ;
 int num_counters ;
 int op_amd_handle_ibs (struct pt_regs* const,struct op_msrs const* const) ;
 int op_x86_phys_to_virt (int) ;
 int oprofile_add_sample (struct pt_regs* const,int) ;
 int rdmsrl (int ,int) ;
 scalar_t__* reset_value ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static int op_amd_check_ctrs(struct pt_regs * const regs,
        struct op_msrs const * const msrs)
{
 u64 val;
 int i;

 for (i = 0; i < num_counters; ++i) {
  int virt = op_x86_phys_to_virt(i);
  if (!reset_value[virt])
   continue;
  rdmsrl(msrs->counters[i].addr, val);

  if (val & OP_CTR_OVERFLOW)
   continue;
  oprofile_add_sample(regs, virt);
  wrmsrl(msrs->counters[i].addr, -(u64)reset_value[virt]);
 }

 op_amd_handle_ibs(regs, msrs);


 return 1;
}
