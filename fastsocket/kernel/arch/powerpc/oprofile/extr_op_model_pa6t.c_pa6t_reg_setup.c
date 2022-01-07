
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_system_config {int mmcr0; int mmcr1; scalar_t__ enable_user; scalar_t__ enable_kernel; } ;
struct op_counter_config {scalar_t__ count; int enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;


 int PA6T_MMCR0_HYPEN ;
 int PA6T_MMCR0_PREN ;
 int PA6T_MMCR0_SUPEN ;
 TYPE_1__* cur_cpu_spec ;
 int mmcr0_val ;
 int mmcr1_val ;
 int pr_debug (char*,int,...) ;
 scalar_t__* reset_value ;

__attribute__((used)) static int pa6t_reg_setup(struct op_counter_config *ctr,
      struct op_system_config *sys,
      int num_ctrs)
{
 int pmc;
 for (pmc = 0; pmc < cur_cpu_spec->num_pmcs; pmc++)
  if (!ctr[pmc].enabled) {
   sys->mmcr0 &= ~(0x1UL << pmc);
   sys->mmcr0 &= ~(0x1UL << (pmc+12));
   pr_debug("turned off counter %u\n", pmc);
  }

 if (sys->enable_kernel)
  sys->mmcr0 |= PA6T_MMCR0_SUPEN | PA6T_MMCR0_HYPEN;
 else
  sys->mmcr0 &= ~(PA6T_MMCR0_SUPEN | PA6T_MMCR0_HYPEN);

 if (sys->enable_user)
  sys->mmcr0 |= PA6T_MMCR0_PREN;
 else
  sys->mmcr0 &= ~PA6T_MMCR0_PREN;






 mmcr0_val = sys->mmcr0;
 mmcr1_val = sys->mmcr1;
 pr_debug("mmcr0_val inited to %016lx\n", sys->mmcr0);
 pr_debug("mmcr1_val inited to %016lx\n", sys->mmcr1);

 for (pmc = 0; pmc < cur_cpu_spec->num_pmcs; pmc++) {

  reset_value[pmc] = (0x1UL << 39) - ctr[pmc].count;
  pr_debug("reset_value for pmc%u inited to 0x%llx\n",
     pmc, reset_value[pmc]);
 }

 return 0;
}
