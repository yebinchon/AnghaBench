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
struct radeon_device {int /*<<< orphan*/  dev; } ;
struct evergreen_mc_save {int dummy; } ;

/* Variables and functions */
 int CP_CE_HALT ; 
 scalar_t__ CP_ME_CNTL ; 
 int CP_ME_HALT ; 
 int CP_PFP_HALT ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 scalar_t__ DMA_RB_CNTL ; 
 int DMA_RB_ENABLE ; 
 scalar_t__ GRBM_SOFT_RESET ; 
 int RADEON_RESET_COMPUTE ; 
 int RADEON_RESET_CP ; 
 int RADEON_RESET_DISPLAY ; 
 int RADEON_RESET_DMA ; 
 int RADEON_RESET_DMA1 ; 
 int RADEON_RESET_GFX ; 
 int RADEON_RESET_GRBM ; 
 int RADEON_RESET_IH ; 
 int RADEON_RESET_MC ; 
 int RADEON_RESET_RLC ; 
 int RADEON_RESET_SEM ; 
 int RADEON_RESET_VMC ; 
 int FUNC0 (scalar_t__) ; 
 int SOFT_RESET_BCI ; 
 int SOFT_RESET_CB ; 
 int SOFT_RESET_CP ; 
 int SOFT_RESET_DB ; 
 int SOFT_RESET_DC ; 
 int SOFT_RESET_DMA ; 
 int SOFT_RESET_DMA1 ; 
 int SOFT_RESET_GDS ; 
 int SOFT_RESET_GRBM ; 
 int SOFT_RESET_IA ; 
 int SOFT_RESET_IH ; 
 int SOFT_RESET_MC ; 
 int SOFT_RESET_PA ; 
 int SOFT_RESET_RLC ; 
 int SOFT_RESET_SC ; 
 int SOFT_RESET_SEM ; 
 int SOFT_RESET_SPI ; 
 int SOFT_RESET_SX ; 
 int SOFT_RESET_TA ; 
 int SOFT_RESET_TC ; 
 int SOFT_RESET_VGT ; 
 int SOFT_RESET_VMC ; 
 scalar_t__ SRBM_SOFT_RESET ; 
 scalar_t__ VM_CONTEXT1_PROTECTION_FAULT_ADDR ; 
 scalar_t__ VM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct evergreen_mc_save*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct evergreen_mc_save*) ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct radeon_device *rdev, u32 reset_mask)
{
	struct evergreen_mc_save save;
	u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
	u32 tmp;

	if (reset_mask == 0)
		return;

	FUNC2(rdev->dev, "GPU softreset: 0x%08X\n", reset_mask);

	FUNC7(rdev);
	FUNC2(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
		 FUNC0(VM_CONTEXT1_PROTECTION_FAULT_ADDR));
	FUNC2(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
		 FUNC0(VM_CONTEXT1_PROTECTION_FAULT_STATUS));

	/* Disable CP parsing/prefetching */
	FUNC1(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT | CP_CE_HALT);

	if (reset_mask & RADEON_RESET_DMA) {
		/* dma0 */
		tmp = FUNC0(DMA_RB_CNTL + DMA0_REGISTER_OFFSET);
		tmp &= ~DMA_RB_ENABLE;
		FUNC1(DMA_RB_CNTL + DMA0_REGISTER_OFFSET, tmp);
	}
	if (reset_mask & RADEON_RESET_DMA1) {
		/* dma1 */
		tmp = FUNC0(DMA_RB_CNTL + DMA1_REGISTER_OFFSET);
		tmp &= ~DMA_RB_ENABLE;
		FUNC1(DMA_RB_CNTL + DMA1_REGISTER_OFFSET, tmp);
	}

	FUNC8(50);

	FUNC5(rdev, &save);
	if (FUNC6(rdev)) {
		FUNC3(rdev->dev, "Wait for MC idle timedout !\n");
	}

	if (reset_mask & (RADEON_RESET_GFX | RADEON_RESET_COMPUTE | RADEON_RESET_CP)) {
		grbm_soft_reset = SOFT_RESET_CB |
			SOFT_RESET_DB |
			SOFT_RESET_GDS |
			SOFT_RESET_PA |
			SOFT_RESET_SC |
			SOFT_RESET_BCI |
			SOFT_RESET_SPI |
			SOFT_RESET_SX |
			SOFT_RESET_TC |
			SOFT_RESET_TA |
			SOFT_RESET_VGT |
			SOFT_RESET_IA;
	}

	if (reset_mask & RADEON_RESET_CP) {
		grbm_soft_reset |= SOFT_RESET_CP | SOFT_RESET_VGT;

		srbm_soft_reset |= SOFT_RESET_GRBM;
	}

	if (reset_mask & RADEON_RESET_DMA)
		srbm_soft_reset |= SOFT_RESET_DMA;

	if (reset_mask & RADEON_RESET_DMA1)
		srbm_soft_reset |= SOFT_RESET_DMA1;

	if (reset_mask & RADEON_RESET_DISPLAY)
		srbm_soft_reset |= SOFT_RESET_DC;

	if (reset_mask & RADEON_RESET_RLC)
		grbm_soft_reset |= SOFT_RESET_RLC;

	if (reset_mask & RADEON_RESET_SEM)
		srbm_soft_reset |= SOFT_RESET_SEM;

	if (reset_mask & RADEON_RESET_IH)
		srbm_soft_reset |= SOFT_RESET_IH;

	if (reset_mask & RADEON_RESET_GRBM)
		srbm_soft_reset |= SOFT_RESET_GRBM;

	if (reset_mask & RADEON_RESET_VMC)
		srbm_soft_reset |= SOFT_RESET_VMC;

	if (reset_mask & RADEON_RESET_MC)
		srbm_soft_reset |= SOFT_RESET_MC;

	if (grbm_soft_reset) {
		tmp = FUNC0(GRBM_SOFT_RESET);
		tmp |= grbm_soft_reset;
		FUNC2(rdev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC1(GRBM_SOFT_RESET, tmp);
		tmp = FUNC0(GRBM_SOFT_RESET);

		FUNC8(50);

		tmp &= ~grbm_soft_reset;
		FUNC1(GRBM_SOFT_RESET, tmp);
		tmp = FUNC0(GRBM_SOFT_RESET);
	}

	if (srbm_soft_reset) {
		tmp = FUNC0(SRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC2(rdev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC1(SRBM_SOFT_RESET, tmp);
		tmp = FUNC0(SRBM_SOFT_RESET);

		FUNC8(50);

		tmp &= ~srbm_soft_reset;
		FUNC1(SRBM_SOFT_RESET, tmp);
		tmp = FUNC0(SRBM_SOFT_RESET);
	}

	/* Wait a little for things to settle down */
	FUNC8(50);

	FUNC4(rdev, &save);
	FUNC8(50);

	FUNC7(rdev);
}