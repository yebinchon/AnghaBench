
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int table_addr; int ready; int * robj; } ;
struct TYPE_7__ {int gtt_start; int gtt_end; int gtt_size; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int max_pfn; } ;
struct radeon_device {TYPE_4__ gart; TYPE_3__ mc; TYPE_2__ dummy_page; TYPE_1__ vm_manager; int dev; } ;


 int CONTEXT1_IDENTITY_ACCESS_MODE (int) ;
 int DRM_INFO (char*,unsigned int,unsigned long long) ;
 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT ;
 int EFFECTIVE_L2_QUEUE_SIZE (int) ;
 int EINVAL ;
 int ENABLE_ADVANCED_DRIVER_MODEL ;
 int ENABLE_CONTEXT ;
 int ENABLE_L1_FRAGMENT_PROCESSING ;
 int ENABLE_L1_TLB ;
 int ENABLE_L2_CACHE ;
 int ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE ;
 int ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE ;
 int INVALIDATE_ALL_L1_TLBS ;
 int INVALIDATE_L2_CACHE ;
 int L2_CACHE_BIGK_ASSOCIATIVITY ;
 int L2_CACHE_BIGK_FRAGMENT_SIZE (int) ;
 int MC_VM_MX_L1_TLB_CNTL ;
 int PAGE_TABLE_DEPTH (int) ;
 int PDE0_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT ;
 int RANGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT ;
 int READ_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int READ_PROTECTION_FAULT_ENABLE_INTERRUPT ;
 int SYSTEM_ACCESS_MODE_NOT_IN_SYS ;
 int SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU ;
 int VALID_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int VALID_PROTECTION_FAULT_ENABLE_INTERRUPT ;
 int VM_CONTEXT0_CNTL ;
 int VM_CONTEXT0_CNTL2 ;
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 int VM_CONTEXT0_PAGE_TABLE_END_ADDR ;
 int VM_CONTEXT0_PAGE_TABLE_START_ADDR ;
 int VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR ;
 int VM_CONTEXT1_CNTL ;
 int VM_CONTEXT1_CNTL2 ;
 int VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR ;
 int VM_L2_CNTL ;
 int VM_L2_CNTL2 ;
 int VM_L2_CNTL3 ;
 int WREG32 (int,int) ;
 int WRITE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT ;
 int cayman_pcie_gart_tlb_flush (struct radeon_device*) ;
 int dev_err (int ,char*) ;
 int radeon_gart_restore (struct radeon_device*) ;
 int radeon_gart_table_vram_pin (struct radeon_device*) ;

__attribute__((used)) static int cayman_pcie_gart_enable(struct radeon_device *rdev)
{
 int i, r;

 if (rdev->gart.robj == ((void*)0)) {
  dev_err(rdev->dev, "No VRAM object for PCIE GART.\n");
  return -EINVAL;
 }
 r = radeon_gart_table_vram_pin(rdev);
 if (r)
  return r;
 radeon_gart_restore(rdev);

 WREG32(MC_VM_MX_L1_TLB_CNTL,
        (0xA << 7) |
        ENABLE_L1_TLB |
        ENABLE_L1_FRAGMENT_PROCESSING |
        SYSTEM_ACCESS_MODE_NOT_IN_SYS |
        ENABLE_ADVANCED_DRIVER_MODEL |
        SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU);

 WREG32(VM_L2_CNTL, ENABLE_L2_CACHE |
        ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE |
        ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE |
        EFFECTIVE_L2_QUEUE_SIZE(7) |
        CONTEXT1_IDENTITY_ACCESS_MODE(1));
 WREG32(VM_L2_CNTL2, INVALIDATE_ALL_L1_TLBS | INVALIDATE_L2_CACHE);
 WREG32(VM_L2_CNTL3, L2_CACHE_BIGK_ASSOCIATIVITY |
        L2_CACHE_BIGK_FRAGMENT_SIZE(6));

 WREG32(VM_CONTEXT0_PAGE_TABLE_START_ADDR, rdev->mc.gtt_start >> 12);
 WREG32(VM_CONTEXT0_PAGE_TABLE_END_ADDR, rdev->mc.gtt_end >> 12);
 WREG32(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, rdev->gart.table_addr >> 12);
 WREG32(VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR,
   (u32)(rdev->dummy_page.addr >> 12));
 WREG32(VM_CONTEXT0_CNTL2, 0);
 WREG32(VM_CONTEXT0_CNTL, ENABLE_CONTEXT | PAGE_TABLE_DEPTH(0) |
    RANGE_PROTECTION_FAULT_ENABLE_DEFAULT);

 WREG32(0x15D4, 0);
 WREG32(0x15D8, 0);
 WREG32(0x15DC, 0);






 for (i = 1; i < 8; i++) {
  WREG32(VM_CONTEXT0_PAGE_TABLE_START_ADDR + (i << 2), 0);
  WREG32(VM_CONTEXT0_PAGE_TABLE_END_ADDR + (i << 2), rdev->vm_manager.max_pfn);
  WREG32(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (i << 2),
   rdev->gart.table_addr >> 12);
 }


 WREG32(VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR,
        (u32)(rdev->dummy_page.addr >> 12));
 WREG32(VM_CONTEXT1_CNTL2, 4);
 WREG32(VM_CONTEXT1_CNTL, ENABLE_CONTEXT | PAGE_TABLE_DEPTH(1) |
    RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT |
    RANGE_PROTECTION_FAULT_ENABLE_DEFAULT |
    DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT |
    DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT |
    PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT |
    PDE0_PROTECTION_FAULT_ENABLE_DEFAULT |
    VALID_PROTECTION_FAULT_ENABLE_INTERRUPT |
    VALID_PROTECTION_FAULT_ENABLE_DEFAULT |
    READ_PROTECTION_FAULT_ENABLE_INTERRUPT |
    READ_PROTECTION_FAULT_ENABLE_DEFAULT |
    WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT |
    WRITE_PROTECTION_FAULT_ENABLE_DEFAULT);

 cayman_pcie_gart_tlb_flush(rdev);
 DRM_INFO("PCIE GART of %uM enabled (table at 0x%016llX).\n",
   (unsigned)(rdev->mc.gtt_size >> 20),
   (unsigned long long)rdev->gart.table_addr);
 rdev->gart.ready = 1;
 return 0;
}
