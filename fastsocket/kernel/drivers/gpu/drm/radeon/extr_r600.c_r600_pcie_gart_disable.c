
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int BANK_SELECT_0 (int ) ;
 int BANK_SELECT_1 (int) ;
 int EFFECTIVE_L1_QUEUE_SIZE (int) ;
 int EFFECTIVE_L1_TLB_SIZE (int) ;
 int EFFECTIVE_L2_QUEUE_SIZE (int) ;
 int ENABLE_L2_FRAGMENT_PROCESSING ;
 int ENABLE_WAIT_L2_QUERY ;
 scalar_t__ MC_VM_L1_TLB_MCB_RD_GFX_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_RD_HDP_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_RD_PDMA_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_RD_SEM_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_RD_SYS_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_WR_GFX_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_WR_HDP_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_WR_PDMA_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_WR_SEM_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCB_WR_SYS_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCD_RD_A_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCD_RD_B_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCD_WR_A_CNTL ;
 scalar_t__ MC_VM_L1_TLB_MCD_WR_B_CNTL ;
 scalar_t__ VM_CONTEXT0_CNTL ;
 scalar_t__ VM_L2_CNTL ;
 scalar_t__ VM_L2_CNTL3 ;
 int WREG32 (scalar_t__,int) ;
 int radeon_gart_table_vram_unpin (struct radeon_device*) ;

__attribute__((used)) static void r600_pcie_gart_disable(struct radeon_device *rdev)
{
 u32 tmp;
 int i;


 for (i = 0; i < 7; i++)
  WREG32(VM_CONTEXT0_CNTL + (i * 4), 0);


 WREG32(VM_L2_CNTL, ENABLE_L2_FRAGMENT_PROCESSING |
    EFFECTIVE_L2_QUEUE_SIZE(7));
 WREG32(VM_L2_CNTL3, BANK_SELECT_0(0) | BANK_SELECT_1(1));

 tmp = EFFECTIVE_L1_TLB_SIZE(5) | EFFECTIVE_L1_QUEUE_SIZE(5) |
  ENABLE_WAIT_L2_QUERY;
 WREG32(MC_VM_L1_TLB_MCD_RD_A_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCD_WR_A_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCD_RD_B_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCD_WR_B_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_RD_GFX_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_WR_GFX_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_RD_PDMA_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_WR_PDMA_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_RD_SEM_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_WR_SEM_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_RD_SYS_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_WR_SYS_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_RD_HDP_CNTL, tmp);
 WREG32(MC_VM_L1_TLB_MCB_WR_HDP_CNTL, tmp);
 radeon_gart_table_vram_unpin(rdev);
}
