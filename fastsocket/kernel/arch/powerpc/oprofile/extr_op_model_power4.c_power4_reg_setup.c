
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_system_config {scalar_t__ enable_user; scalar_t__ enable_kernel; int mmcra; int mmcr1; int mmcr0; } ;
struct op_counter_config {scalar_t__ count; } ;
struct TYPE_2__ {int num_pmcs; } ;


 int MMCR0_KERNEL_DISABLE ;
 int MMCR0_PROBLEM_DISABLE ;
 int PVR_POWER7p ;
 int PV_970 ;
 int PV_970FX ;
 int PV_970GX ;
 int PV_970MP ;
 int PV_POWER4 ;
 int PV_POWER4p ;
 int PV_POWER5 ;
 int PV_POWER5p ;
 scalar_t__ __is_processor (int ) ;
 scalar_t__ cntr_marked_events ;
 TYPE_1__* cur_cpu_spec ;
 int mmcr0_val ;
 int mmcr1_val ;
 int mmcra_val ;
 scalar_t__ power7_marked_instr_event (int ) ;
 scalar_t__* reset_value ;
 int use_slot_nums ;

__attribute__((used)) static int power4_reg_setup(struct op_counter_config *ctr,
        struct op_system_config *sys,
        int num_ctrs)
{
 int i;






 mmcr0_val = sys->mmcr0;
 mmcr1_val = sys->mmcr1;
 mmcra_val = sys->mmcra;
 if (__is_processor(PVR_POWER7p))
  cntr_marked_events = power7_marked_instr_event(mmcr1_val);
 else
  cntr_marked_events = 0;




 for (i = 0; i < cur_cpu_spec->num_pmcs; ++i)
  reset_value[i] = 0x80000000UL - ctr[i].count;


 if (sys->enable_kernel)
  mmcr0_val &= ~MMCR0_KERNEL_DISABLE;
 else
  mmcr0_val |= MMCR0_KERNEL_DISABLE;

 if (sys->enable_user)
  mmcr0_val &= ~MMCR0_PROBLEM_DISABLE;
 else
  mmcr0_val |= MMCR0_PROBLEM_DISABLE;

 if (__is_processor(PV_POWER4) || __is_processor(PV_POWER4p) ||
     __is_processor(PV_970) || __is_processor(PV_970FX) ||
     __is_processor(PV_970MP) || __is_processor(PV_970GX) ||
     __is_processor(PV_POWER5) || __is_processor(PV_POWER5p))
  use_slot_nums = 1;

 return 0;
}
