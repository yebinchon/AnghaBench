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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
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
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	u32 tmp;
	int i;

	/* Disable all tables */
	for (i = 0; i < 7; i++)
		FUNC5(VM_CONTEXT0_CNTL + (i * 4), 0);

	/* Disable L2 cache */
	FUNC5(VM_L2_CNTL, ENABLE_L2_FRAGMENT_PROCESSING |
				FUNC4(7));
	FUNC5(VM_L2_CNTL3, FUNC0(0) | FUNC1(1));
	/* Setup L1 TLB control */
	tmp = FUNC3(5) | FUNC2(5) |
		ENABLE_WAIT_L2_QUERY;
	FUNC5(MC_VM_L1_TLB_MCD_RD_A_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCD_WR_A_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCD_RD_B_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCD_WR_B_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_RD_GFX_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_WR_GFX_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_RD_PDMA_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_WR_PDMA_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_RD_SEM_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_WR_SEM_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_RD_SYS_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_WR_SYS_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_RD_HDP_CNTL, tmp);
	FUNC5(MC_VM_L1_TLB_MCB_WR_HDP_CNTL, tmp);
	FUNC6(rdev);
}