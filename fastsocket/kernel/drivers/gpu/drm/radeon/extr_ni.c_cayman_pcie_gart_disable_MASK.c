#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ENABLE_L1_FRAGMENT_PROCESSING ; 
 int ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE ; 
 int ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE ; 
 int L2_CACHE_BIGK_ASSOCIATIVITY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MC_VM_MX_L1_TLB_CNTL ; 
 int SYSTEM_ACCESS_MODE_NOT_IN_SYS ; 
 int SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU ; 
 int /*<<< orphan*/  VM_CONTEXT0_CNTL ; 
 int /*<<< orphan*/  VM_CONTEXT1_CNTL ; 
 int /*<<< orphan*/  VM_L2_CNTL ; 
 int /*<<< orphan*/  VM_L2_CNTL2 ; 
 int /*<<< orphan*/  VM_L2_CNTL3 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev)
{
	/* Disable all tables */
	FUNC3(VM_CONTEXT0_CNTL, 0);
	FUNC3(VM_CONTEXT1_CNTL, 0);
	/* Setup TLB control */
	FUNC3(MC_VM_MX_L1_TLB_CNTL, ENABLE_L1_FRAGMENT_PROCESSING |
	       SYSTEM_ACCESS_MODE_NOT_IN_SYS |
	       SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU);
	/* Setup L2 cache */
	FUNC3(VM_L2_CNTL, ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE |
	       ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE |
	       FUNC1(7) |
	       FUNC0(1));
	FUNC3(VM_L2_CNTL2, 0);
	FUNC3(VM_L2_CNTL3, L2_CACHE_BIGK_ASSOCIATIVITY |
	       FUNC2(6));
	FUNC4(rdev);
}