
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int BANK_SELECT (int ) ;
 int CACHE_UPDATE_MODE (int) ;
 int EFFECTIVE_L1_QUEUE_SIZE (int) ;
 int EFFECTIVE_L1_TLB_SIZE (int) ;
 int EFFECTIVE_L2_QUEUE_SIZE (int) ;
 int ENABLE_L2_FRAGMENT_PROCESSING ;
 int MC_VM_MB_L1_TLB0_CNTL ;
 int MC_VM_MB_L1_TLB1_CNTL ;
 int MC_VM_MB_L1_TLB2_CNTL ;
 int MC_VM_MB_L1_TLB3_CNTL ;
 int MC_VM_MD_L1_TLB0_CNTL ;
 int MC_VM_MD_L1_TLB1_CNTL ;
 int MC_VM_MD_L1_TLB2_CNTL ;
 int VM_CONTEXT0_CNTL ;
 int VM_CONTEXT1_CNTL ;
 int VM_L2_CNTL ;
 int VM_L2_CNTL2 ;
 int VM_L2_CNTL3 ;
 int WREG32 (int ,int) ;
 int radeon_gart_table_vram_unpin (struct radeon_device*) ;

__attribute__((used)) static void evergreen_pcie_gart_disable(struct radeon_device *rdev)
{
 u32 tmp;


 WREG32(VM_CONTEXT0_CNTL, 0);
 WREG32(VM_CONTEXT1_CNTL, 0);


 WREG32(VM_L2_CNTL, ENABLE_L2_FRAGMENT_PROCESSING |
    EFFECTIVE_L2_QUEUE_SIZE(7));
 WREG32(VM_L2_CNTL2, 0);
 WREG32(VM_L2_CNTL3, BANK_SELECT(0) | CACHE_UPDATE_MODE(2));

 tmp = EFFECTIVE_L1_TLB_SIZE(5) | EFFECTIVE_L1_QUEUE_SIZE(5);
 WREG32(MC_VM_MD_L1_TLB0_CNTL, tmp);
 WREG32(MC_VM_MD_L1_TLB1_CNTL, tmp);
 WREG32(MC_VM_MD_L1_TLB2_CNTL, tmp);
 WREG32(MC_VM_MB_L1_TLB0_CNTL, tmp);
 WREG32(MC_VM_MB_L1_TLB1_CNTL, tmp);
 WREG32(MC_VM_MB_L1_TLB2_CNTL, tmp);
 WREG32(MC_VM_MB_L1_TLB3_CNTL, tmp);
 radeon_gart_table_vram_unpin(rdev);
}
