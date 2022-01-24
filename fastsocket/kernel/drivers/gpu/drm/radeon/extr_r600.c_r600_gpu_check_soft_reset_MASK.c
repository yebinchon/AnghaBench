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
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV770 ; 
 int DMA_IDLE ; 
 int /*<<< orphan*/  DMA_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int) ; 
 int FUNC26 (int) ; 
 int FUNC27 (int) ; 
 int RADEON_RESET_CP ; 
 int RADEON_RESET_DISPLAY ; 
 int RADEON_RESET_DMA ; 
 int RADEON_RESET_GFX ; 
 int RADEON_RESET_GRBM ; 
 int RADEON_RESET_IH ; 
 int RADEON_RESET_MC ; 
 int RADEON_RESET_RLC ; 
 int RADEON_RESET_SEM ; 
 int RADEON_RESET_VMC ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000E50_SRBM_STATUS ; 
 int /*<<< orphan*/  R_008010_GRBM_STATUS ; 
 scalar_t__ FUNC29 (struct radeon_device*) ; 

__attribute__((used)) static u32 FUNC30(struct radeon_device *rdev)
{
	u32 reset_mask = 0;
	u32 tmp;

	/* GRBM_STATUS */
	tmp = FUNC28(R_008010_GRBM_STATUS);
	if (rdev->family >= CHIP_RV770) {
		if (FUNC18(tmp) | FUNC20(tmp) |
		    FUNC21(tmp) | FUNC23(tmp) |
		    FUNC25(tmp) | FUNC26(tmp) |
		    FUNC16(tmp) | FUNC12(tmp) |
		    FUNC22(tmp) | FUNC27(tmp))
			reset_mask |= RADEON_RESET_GFX;
	} else {
		if (FUNC18(tmp) | FUNC20(tmp) |
		    FUNC21(tmp) | FUNC23(tmp) |
		    FUNC24(tmp) | FUNC26(tmp) |
		    FUNC16(tmp) | FUNC12(tmp) |
		    FUNC22(tmp) | FUNC27(tmp))
			reset_mask |= RADEON_RESET_GFX;
	}

	if (FUNC13(tmp) | FUNC19(tmp) |
	    FUNC14(tmp) | FUNC15(tmp))
		reset_mask |= RADEON_RESET_CP;

	if (FUNC17(tmp))
		reset_mask |= RADEON_RESET_GRBM | RADEON_RESET_GFX | RADEON_RESET_CP;

	/* DMA_STATUS_REG */
	tmp = FUNC28(DMA_STATUS_REG);
	if (!(tmp & DMA_IDLE))
		reset_mask |= RADEON_RESET_DMA;

	/* SRBM_STATUS */
	tmp = FUNC28(R_000E50_SRBM_STATUS);
	if (FUNC9(tmp) | FUNC8(tmp))
		reset_mask |= RADEON_RESET_RLC;

	if (FUNC2(tmp))
		reset_mask |= RADEON_RESET_IH;

	if (FUNC10(tmp))
		reset_mask |= RADEON_RESET_SEM;

	if (FUNC1(tmp))
		reset_mask |= RADEON_RESET_GRBM;

	if (FUNC11(tmp))
		reset_mask |= RADEON_RESET_VMC;

	if (FUNC3(tmp) | FUNC7(tmp) |
	    FUNC6(tmp) | FUNC5(tmp) |
	    FUNC4(tmp))
		reset_mask |= RADEON_RESET_MC;

	if (FUNC29(rdev))
		reset_mask |= RADEON_RESET_DISPLAY;

	/* Skip MC reset as it's mostly likely not hung, just busy */
	if (reset_mask & RADEON_RESET_MC) {
		FUNC0("MC busy: 0x%08X, clearing.\n", reset_mask);
		reset_mask &= ~RADEON_RESET_MC;
	}

	return reset_mask;
}