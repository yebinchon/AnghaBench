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
struct rv515_mc_save {int dummy; } ;
struct radeon_device {scalar_t__ family; int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV770 ; 
 int /*<<< orphan*/  DMA_RB_CNTL ; 
 int DMA_RB_ENABLE ; 
 int RADEON_IS_IGP ; 
 int RADEON_RESET_COMPUTE ; 
 int RADEON_RESET_CP ; 
 int RADEON_RESET_DMA ; 
 int RADEON_RESET_GFX ; 
 int RADEON_RESET_GRBM ; 
 int RADEON_RESET_IH ; 
 int RADEON_RESET_MC ; 
 int RADEON_RESET_RLC ; 
 int RADEON_RESET_SEM ; 
 int RADEON_RESET_VMC ; 
 int /*<<< orphan*/  RLC_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RV770_SOFT_RESET_DMA ; 
 int /*<<< orphan*/  R_008020_GRBM_SOFT_RESET ; 
 int /*<<< orphan*/  R_0086D8_CP_ME_CNTL ; 
 int SOFT_RESET_DMA ; 
 int /*<<< orphan*/  SRBM_SOFT_RESET ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 scalar_t__ FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*,struct rv515_mc_save*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*,struct rv515_mc_save*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 

__attribute__((used)) static void FUNC32(struct radeon_device *rdev, u32 reset_mask)
{
	struct rv515_mc_save save;
	u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
	u32 tmp;

	if (reset_mask == 0)
		return;

	FUNC24(rdev->dev, "GPU softreset: 0x%08X\n", reset_mask);

	FUNC28(rdev);

	/* Disable CP parsing/prefetching */
	if (rdev->family >= CHIP_RV770)
		FUNC23(R_0086D8_CP_ME_CNTL, FUNC21(1) | FUNC22(1));
	else
		FUNC23(R_0086D8_CP_ME_CNTL, FUNC21(1));

	/* disable the RLC */
	FUNC23(RLC_CNTL, 0);

	if (reset_mask & RADEON_RESET_DMA) {
		/* Disable DMA */
		tmp = FUNC0(DMA_RB_CNTL);
		tmp &= ~DMA_RB_ENABLE;
		FUNC23(DMA_RB_CNTL, tmp);
	}

	FUNC26(50);

	FUNC30(rdev, &save);
	if (FUNC27(rdev)) {
		FUNC25(rdev->dev, "Wait for MC idle timedout !\n");
	}

	if (reset_mask & (RADEON_RESET_GFX | RADEON_RESET_COMPUTE)) {
		if (rdev->family >= CHIP_RV770)
			grbm_soft_reset |= FUNC10(1) |
				FUNC7(1) |
				FUNC11(1) |
				FUNC12(1) |
				FUNC15(1) |
				FUNC16(1) |
				FUNC13(1) |
				FUNC18(1) |
				FUNC17(1) |
				FUNC19(1) |
				FUNC20(1);
		else
			grbm_soft_reset |= FUNC9(1) |
				FUNC10(1) |
				FUNC7(1) |
				FUNC11(1) |
				FUNC12(1) |
				FUNC14(1) |
				FUNC15(1) |
				FUNC16(1) |
				FUNC13(1) |
				FUNC18(1) |
				FUNC17(1) |
				FUNC19(1) |
				FUNC20(1);
	}

	if (reset_mask & RADEON_RESET_CP) {
		grbm_soft_reset |= FUNC8(1) |
			FUNC20(1);

		srbm_soft_reset |= FUNC1(1);
	}

	if (reset_mask & RADEON_RESET_DMA) {
		if (rdev->family >= CHIP_RV770)
			srbm_soft_reset |= RV770_SOFT_RESET_DMA;
		else
			srbm_soft_reset |= SOFT_RESET_DMA;
	}

	if (reset_mask & RADEON_RESET_RLC)
		srbm_soft_reset |= FUNC4(1);

	if (reset_mask & RADEON_RESET_SEM)
		srbm_soft_reset |= FUNC5(1);

	if (reset_mask & RADEON_RESET_IH)
		srbm_soft_reset |= FUNC2(1);

	if (reset_mask & RADEON_RESET_GRBM)
		srbm_soft_reset |= FUNC1(1);

	if (!(rdev->flags & RADEON_IS_IGP)) {
		if (reset_mask & RADEON_RESET_MC)
			srbm_soft_reset |= FUNC3(1);
	}

	if (reset_mask & RADEON_RESET_VMC)
		srbm_soft_reset |= FUNC6(1);

	if (grbm_soft_reset) {
		tmp = FUNC0(R_008020_GRBM_SOFT_RESET);
		tmp |= grbm_soft_reset;
		FUNC24(rdev->dev, "R_008020_GRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC23(R_008020_GRBM_SOFT_RESET, tmp);
		tmp = FUNC0(R_008020_GRBM_SOFT_RESET);

		FUNC31(50);

		tmp &= ~grbm_soft_reset;
		FUNC23(R_008020_GRBM_SOFT_RESET, tmp);
		tmp = FUNC0(R_008020_GRBM_SOFT_RESET);
	}

	if (srbm_soft_reset) {
		tmp = FUNC0(SRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC24(rdev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC23(SRBM_SOFT_RESET, tmp);
		tmp = FUNC0(SRBM_SOFT_RESET);

		FUNC31(50);

		tmp &= ~srbm_soft_reset;
		FUNC23(SRBM_SOFT_RESET, tmp);
		tmp = FUNC0(SRBM_SOFT_RESET);
	}

	/* Wait a little for things to settle down */
	FUNC26(1);

	FUNC29(rdev, &save);
	FUNC31(50);

	FUNC28(rdev);
}