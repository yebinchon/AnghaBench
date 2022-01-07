
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct op_counter_config {int dummy; } ;


 int SPRN_PA6T_MMCR0 ;
 int SPRN_PA6T_MMCR1 ;
 int mfspr (int ) ;
 int mmcr0_val ;
 int mmcr1_val ;
 int mtspr (int ,int) ;
 int pr_debug (char*,int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static int pa6t_cpu_setup(struct op_counter_config *ctr)
{
 u64 mmcr0 = mmcr0_val;
 u64 mmcr1 = mmcr1_val;


 mmcr0 &= ~(0x3FUL);
 mtspr(SPRN_PA6T_MMCR0, mmcr0);


 mtspr(SPRN_PA6T_MMCR1, mmcr1);

 pr_debug("setup on cpu %d, mmcr0 %016lx\n", smp_processor_id(),
  mfspr(SPRN_PA6T_MMCR0));
 pr_debug("setup on cpu %d, mmcr1 %016lx\n", smp_processor_id(),
  mfspr(SPRN_PA6T_MMCR1));

 return 0;
}
