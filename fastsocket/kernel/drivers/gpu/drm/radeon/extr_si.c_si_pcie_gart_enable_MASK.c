#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int table_addr; int ready; int /*<<< orphan*/ * robj; } ;
struct TYPE_7__ {int gtt_start; int gtt_end; int gtt_size; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int max_pfn; } ;
struct radeon_device {TYPE_4__ gart; TYPE_3__ mc; TYPE_2__ dummy_page; TYPE_1__ vm_manager; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned long long) ; 
 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT ; 
 int FUNC2 (int) ; 
 int EINVAL ; 
 int ENABLE_ADVANCED_DRIVER_MODEL ; 
 int ENABLE_CONTEXT ; 
 int ENABLE_L1_TLB ; 
 int ENABLE_L2_CACHE ; 
 int ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE ; 
 int ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE ; 
 int INVALIDATE_ALL_L1_TLBS ; 
 int INVALIDATE_L2_CACHE ; 
 int L2_CACHE_BIGK_ASSOCIATIVITY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MC_VM_MX_L1_TLB_CNTL ; 
 int FUNC4 (int) ; 
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
 int VM_CONTEXT1_PAGE_TABLE_END_ADDR ; 
 int VM_CONTEXT1_PAGE_TABLE_START_ADDR ; 
 int VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR ; 
 int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int VM_L2_CNTL ; 
 int VM_L2_CNTL2 ; 
 int VM_L2_CNTL3 ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int WRITE_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC10(struct radeon_device *rdev)
{
	int r, i;

	if (rdev->gart.robj == NULL) {
		FUNC6(rdev->dev, "No VRAM object for PCIE GART.\n");
		return -EINVAL;
	}
	r = FUNC8(rdev);
	if (r)
		return r;
	FUNC7(rdev);
	/* Setup TLB control */
	FUNC5(MC_VM_MX_L1_TLB_CNTL,
	       (0xA << 7) |
	       ENABLE_L1_TLB |
	       SYSTEM_ACCESS_MODE_NOT_IN_SYS |
	       ENABLE_ADVANCED_DRIVER_MODEL |
	       SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU);
	/* Setup L2 cache */
	FUNC5(VM_L2_CNTL, ENABLE_L2_CACHE |
	       ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE |
	       ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE |
	       FUNC2(7) |
	       FUNC0(1));
	FUNC5(VM_L2_CNTL2, INVALIDATE_ALL_L1_TLBS | INVALIDATE_L2_CACHE);
	FUNC5(VM_L2_CNTL3, L2_CACHE_BIGK_ASSOCIATIVITY |
	       FUNC3(0));
	/* setup context0 */
	FUNC5(VM_CONTEXT0_PAGE_TABLE_START_ADDR, rdev->mc.gtt_start >> 12);
	FUNC5(VM_CONTEXT0_PAGE_TABLE_END_ADDR, rdev->mc.gtt_end >> 12);
	FUNC5(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, rdev->gart.table_addr >> 12);
	FUNC5(VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR,
			(u32)(rdev->dummy_page.addr >> 12));
	FUNC5(VM_CONTEXT0_CNTL2, 0);
	FUNC5(VM_CONTEXT0_CNTL, (ENABLE_CONTEXT | FUNC4(0) |
				  RANGE_PROTECTION_FAULT_ENABLE_DEFAULT));

	FUNC5(0x15D4, 0);
	FUNC5(0x15D8, 0);
	FUNC5(0x15DC, 0);

	/* empty context1-15 */
	/* set vm size, must be a multiple of 4 */
	FUNC5(VM_CONTEXT1_PAGE_TABLE_START_ADDR, 0);
	FUNC5(VM_CONTEXT1_PAGE_TABLE_END_ADDR, rdev->vm_manager.max_pfn);
	/* Assign the pt base to something valid for now; the pts used for
	 * the VMs are determined by the application and setup and assigned
	 * on the fly in the vm part of radeon_gart.c
	 */
	for (i = 1; i < 16; i++) {
		if (i < 8)
			FUNC5(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (i << 2),
			       rdev->gart.table_addr >> 12);
		else
			FUNC5(VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((i - 8) << 2),
			       rdev->gart.table_addr >> 12);
	}

	/* enable context1-15 */
	FUNC5(VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR,
	       (u32)(rdev->dummy_page.addr >> 12));
	FUNC5(VM_CONTEXT1_CNTL2, 4);
	FUNC5(VM_CONTEXT1_CNTL, ENABLE_CONTEXT | FUNC4(1) |
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

	FUNC9(rdev);
	FUNC1("PCIE GART of %uM enabled (table at 0x%016llX).\n",
		 (unsigned)(rdev->mc.gtt_size >> 20),
		 (unsigned long long)rdev->gart.table_addr);
	rdev->gart.ready = true;
	return 0;
}