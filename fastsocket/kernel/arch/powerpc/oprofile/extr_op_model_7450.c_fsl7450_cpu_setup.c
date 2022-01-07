
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_counter_config {int dummy; } ;


 int SPRN_MMCR0 ;
 int SPRN_MMCR1 ;
 int SPRN_MMCR2 ;
 int mmcr0_val ;
 int mmcr1_val ;
 int mmcr2_val ;
 int mtspr (int ,int ) ;
 int num_pmcs ;
 int pmc_stop_ctrs () ;

__attribute__((used)) static int fsl7450_cpu_setup(struct op_counter_config *ctr)
{

 pmc_stop_ctrs();

 mtspr(SPRN_MMCR0, mmcr0_val);
 mtspr(SPRN_MMCR1, mmcr1_val);
 if (num_pmcs > 4)
  mtspr(SPRN_MMCR2, mmcr2_val);

 return 0;
}
