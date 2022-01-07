
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MMCR0_FC ;
 int MMCR0_FCECE ;
 int MMCR0_FCM0 ;
 int MMCR0_PMC1CE ;
 int MMCR0_PMCnCE ;
 int MMCR0_PMXE ;
 int SPRN_MMCR0 ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void pmc_start_ctrs(void)
{
 u32 mmcr0 = mfspr(SPRN_MMCR0);

 mmcr0 &= ~(MMCR0_FC | MMCR0_FCM0);
 mmcr0 |= (MMCR0_FCECE | MMCR0_PMC1CE | MMCR0_PMCnCE | MMCR0_PMXE);

 mtspr(SPRN_MMCR0, mmcr0);
}
