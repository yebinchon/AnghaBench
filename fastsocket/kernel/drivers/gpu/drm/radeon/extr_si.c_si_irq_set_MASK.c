#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__* hpd; int /*<<< orphan*/ * pflip; scalar_t__* crtc_vblank_int; int /*<<< orphan*/ * ring_int; int /*<<< orphan*/  installed; } ;
struct TYPE_3__ {int /*<<< orphan*/  enabled; } ;
struct radeon_device {int num_crtc; TYPE_2__ irq; TYPE_1__ ih; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL_RING0 ; 
 scalar_t__ CP_INT_CNTL_RING1 ; 
 scalar_t__ CP_INT_CNTL_RING2 ; 
 scalar_t__ DC_HPD1_INT_CONTROL ; 
 scalar_t__ DC_HPD2_INT_CONTROL ; 
 scalar_t__ DC_HPD3_INT_CONTROL ; 
 scalar_t__ DC_HPD4_INT_CONTROL ; 
 scalar_t__ DC_HPD5_INT_CONTROL ; 
 scalar_t__ DC_HPD6_INT_CONTROL ; 
 int DC_HPDx_INT_EN ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 scalar_t__ DMA_CNTL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ EVERGREEN_CRTC0_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC1_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC2_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC3_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC4_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC5_REGISTER_OFFSET ; 
 scalar_t__ GRBM_INT_CNTL ; 
 scalar_t__ GRPH_INT_CONTROL ; 
 scalar_t__ INT_MASK ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC1 (scalar_t__) ; 
 int TIME_STAMP_INT_ENABLE ; 
 int TRAP_ENABLE ; 
 int VBLANK_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

int FUNC7(struct radeon_device *rdev)
{
	u32 cp_int_cntl = CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE;
	u32 cp_int_cntl1 = 0, cp_int_cntl2 = 0;
	u32 crtc1 = 0, crtc2 = 0, crtc3 = 0, crtc4 = 0, crtc5 = 0, crtc6 = 0;
	u32 hpd1, hpd2, hpd3, hpd4, hpd5, hpd6;
	u32 grbm_int_cntl = 0;
	u32 grph1 = 0, grph2 = 0, grph3 = 0, grph4 = 0, grph5 = 0, grph6 = 0;
	u32 dma_cntl, dma_cntl1;

	if (!rdev->irq.installed) {
		FUNC2(1, "Can't enable IRQ/MSI because no handler is installed\n");
		return -EINVAL;
	}
	/* don't enable anything if the ih is disabled */
	if (!rdev->ih.enabled) {
		FUNC6(rdev);
		/* force the active interrupt state to all disabled */
		FUNC5(rdev);
		return 0;
	}

	hpd1 = FUNC1(DC_HPD1_INT_CONTROL) & ~DC_HPDx_INT_EN;
	hpd2 = FUNC1(DC_HPD2_INT_CONTROL) & ~DC_HPDx_INT_EN;
	hpd3 = FUNC1(DC_HPD3_INT_CONTROL) & ~DC_HPDx_INT_EN;
	hpd4 = FUNC1(DC_HPD4_INT_CONTROL) & ~DC_HPDx_INT_EN;
	hpd5 = FUNC1(DC_HPD5_INT_CONTROL) & ~DC_HPDx_INT_EN;
	hpd6 = FUNC1(DC_HPD6_INT_CONTROL) & ~DC_HPDx_INT_EN;

	dma_cntl = FUNC1(DMA_CNTL + DMA0_REGISTER_OFFSET) & ~TRAP_ENABLE;
	dma_cntl1 = FUNC1(DMA_CNTL + DMA1_REGISTER_OFFSET) & ~TRAP_ENABLE;

	/* enable CP interrupts on all rings */
	if (FUNC4(&rdev->irq.ring_int[RADEON_RING_TYPE_GFX_INDEX])) {
		FUNC0("si_irq_set: sw int gfx\n");
		cp_int_cntl |= TIME_STAMP_INT_ENABLE;
	}
	if (FUNC4(&rdev->irq.ring_int[CAYMAN_RING_TYPE_CP1_INDEX])) {
		FUNC0("si_irq_set: sw int cp1\n");
		cp_int_cntl1 |= TIME_STAMP_INT_ENABLE;
	}
	if (FUNC4(&rdev->irq.ring_int[CAYMAN_RING_TYPE_CP2_INDEX])) {
		FUNC0("si_irq_set: sw int cp2\n");
		cp_int_cntl2 |= TIME_STAMP_INT_ENABLE;
	}
	if (FUNC4(&rdev->irq.ring_int[R600_RING_TYPE_DMA_INDEX])) {
		FUNC0("si_irq_set: sw int dma\n");
		dma_cntl |= TRAP_ENABLE;
	}

	if (FUNC4(&rdev->irq.ring_int[CAYMAN_RING_TYPE_DMA1_INDEX])) {
		FUNC0("si_irq_set: sw int dma1\n");
		dma_cntl1 |= TRAP_ENABLE;
	}
	if (rdev->irq.crtc_vblank_int[0] ||
	    FUNC4(&rdev->irq.pflip[0])) {
		FUNC0("si_irq_set: vblank 0\n");
		crtc1 |= VBLANK_INT_MASK;
	}
	if (rdev->irq.crtc_vblank_int[1] ||
	    FUNC4(&rdev->irq.pflip[1])) {
		FUNC0("si_irq_set: vblank 1\n");
		crtc2 |= VBLANK_INT_MASK;
	}
	if (rdev->irq.crtc_vblank_int[2] ||
	    FUNC4(&rdev->irq.pflip[2])) {
		FUNC0("si_irq_set: vblank 2\n");
		crtc3 |= VBLANK_INT_MASK;
	}
	if (rdev->irq.crtc_vblank_int[3] ||
	    FUNC4(&rdev->irq.pflip[3])) {
		FUNC0("si_irq_set: vblank 3\n");
		crtc4 |= VBLANK_INT_MASK;
	}
	if (rdev->irq.crtc_vblank_int[4] ||
	    FUNC4(&rdev->irq.pflip[4])) {
		FUNC0("si_irq_set: vblank 4\n");
		crtc5 |= VBLANK_INT_MASK;
	}
	if (rdev->irq.crtc_vblank_int[5] ||
	    FUNC4(&rdev->irq.pflip[5])) {
		FUNC0("si_irq_set: vblank 5\n");
		crtc6 |= VBLANK_INT_MASK;
	}
	if (rdev->irq.hpd[0]) {
		FUNC0("si_irq_set: hpd 1\n");
		hpd1 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[1]) {
		FUNC0("si_irq_set: hpd 2\n");
		hpd2 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[2]) {
		FUNC0("si_irq_set: hpd 3\n");
		hpd3 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[3]) {
		FUNC0("si_irq_set: hpd 4\n");
		hpd4 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[4]) {
		FUNC0("si_irq_set: hpd 5\n");
		hpd5 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[5]) {
		FUNC0("si_irq_set: hpd 6\n");
		hpd6 |= DC_HPDx_INT_EN;
	}

	FUNC3(CP_INT_CNTL_RING0, cp_int_cntl);
	FUNC3(CP_INT_CNTL_RING1, cp_int_cntl1);
	FUNC3(CP_INT_CNTL_RING2, cp_int_cntl2);

	FUNC3(DMA_CNTL + DMA0_REGISTER_OFFSET, dma_cntl);
	FUNC3(DMA_CNTL + DMA1_REGISTER_OFFSET, dma_cntl1);

	FUNC3(GRBM_INT_CNTL, grbm_int_cntl);

	FUNC3(INT_MASK + EVERGREEN_CRTC0_REGISTER_OFFSET, crtc1);
	FUNC3(INT_MASK + EVERGREEN_CRTC1_REGISTER_OFFSET, crtc2);
	if (rdev->num_crtc >= 4) {
		FUNC3(INT_MASK + EVERGREEN_CRTC2_REGISTER_OFFSET, crtc3);
		FUNC3(INT_MASK + EVERGREEN_CRTC3_REGISTER_OFFSET, crtc4);
	}
	if (rdev->num_crtc >= 6) {
		FUNC3(INT_MASK + EVERGREEN_CRTC4_REGISTER_OFFSET, crtc5);
		FUNC3(INT_MASK + EVERGREEN_CRTC5_REGISTER_OFFSET, crtc6);
	}

	FUNC3(GRPH_INT_CONTROL + EVERGREEN_CRTC0_REGISTER_OFFSET, grph1);
	FUNC3(GRPH_INT_CONTROL + EVERGREEN_CRTC1_REGISTER_OFFSET, grph2);
	if (rdev->num_crtc >= 4) {
		FUNC3(GRPH_INT_CONTROL + EVERGREEN_CRTC2_REGISTER_OFFSET, grph3);
		FUNC3(GRPH_INT_CONTROL + EVERGREEN_CRTC3_REGISTER_OFFSET, grph4);
	}
	if (rdev->num_crtc >= 6) {
		FUNC3(GRPH_INT_CONTROL + EVERGREEN_CRTC4_REGISTER_OFFSET, grph5);
		FUNC3(GRPH_INT_CONTROL + EVERGREEN_CRTC5_REGISTER_OFFSET, grph6);
	}

	FUNC3(DC_HPD1_INT_CONTROL, hpd1);
	FUNC3(DC_HPD2_INT_CONTROL, hpd2);
	FUNC3(DC_HPD3_INT_CONTROL, hpd3);
	FUNC3(DC_HPD4_INT_CONTROL, hpd4);
	FUNC3(DC_HPD5_INT_CONTROL, hpd5);
	FUNC3(DC_HPD6_INT_CONTROL, hpd6);

	return 0;
}