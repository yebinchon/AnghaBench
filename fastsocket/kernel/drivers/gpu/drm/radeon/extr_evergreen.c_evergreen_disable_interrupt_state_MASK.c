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
struct radeon_device {scalar_t__ family; int num_crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ CAYMAN_DMA1_CNTL ; 
 scalar_t__ CHIP_CAYMAN ; 
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL ; 
 scalar_t__ DACA_AUTODETECT_INT_CONTROL ; 
 scalar_t__ DACB_AUTODETECT_INT_CONTROL ; 
 scalar_t__ DC_HPD1_INT_CONTROL ; 
 scalar_t__ DC_HPD2_INT_CONTROL ; 
 scalar_t__ DC_HPD3_INT_CONTROL ; 
 scalar_t__ DC_HPD4_INT_CONTROL ; 
 scalar_t__ DC_HPD5_INT_CONTROL ; 
 scalar_t__ DC_HPD6_INT_CONTROL ; 
 int DC_HPDx_INT_POLARITY ; 
 scalar_t__ DMA_CNTL ; 
 scalar_t__ EVERGREEN_CRTC0_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC1_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC2_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC3_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC4_REGISTER_OFFSET ; 
 scalar_t__ EVERGREEN_CRTC5_REGISTER_OFFSET ; 
 scalar_t__ GRBM_INT_CNTL ; 
 scalar_t__ GRPH_INT_CONTROL ; 
 scalar_t__ INT_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int TRAP_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 

void FUNC4(struct radeon_device *rdev)
{
	u32 tmp;

	if (rdev->family >= CHIP_CAYMAN) {
		FUNC3(rdev, 0,
					 CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
		FUNC3(rdev, 1, 0);
		FUNC3(rdev, 2, 0);
		tmp = FUNC1(CAYMAN_DMA1_CNTL) & ~TRAP_ENABLE;
		FUNC2(CAYMAN_DMA1_CNTL, tmp);
	} else
		FUNC2(CP_INT_CNTL, CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
	tmp = FUNC1(DMA_CNTL) & ~TRAP_ENABLE;
	FUNC2(DMA_CNTL, tmp);
	FUNC2(GRBM_INT_CNTL, 0);
	FUNC2(INT_MASK + EVERGREEN_CRTC0_REGISTER_OFFSET, 0);
	FUNC2(INT_MASK + EVERGREEN_CRTC1_REGISTER_OFFSET, 0);
	if (rdev->num_crtc >= 4) {
		FUNC2(INT_MASK + EVERGREEN_CRTC2_REGISTER_OFFSET, 0);
		FUNC2(INT_MASK + EVERGREEN_CRTC3_REGISTER_OFFSET, 0);
	}
	if (rdev->num_crtc >= 6) {
		FUNC2(INT_MASK + EVERGREEN_CRTC4_REGISTER_OFFSET, 0);
		FUNC2(INT_MASK + EVERGREEN_CRTC5_REGISTER_OFFSET, 0);
	}

	FUNC2(GRPH_INT_CONTROL + EVERGREEN_CRTC0_REGISTER_OFFSET, 0);
	FUNC2(GRPH_INT_CONTROL + EVERGREEN_CRTC1_REGISTER_OFFSET, 0);
	if (rdev->num_crtc >= 4) {
		FUNC2(GRPH_INT_CONTROL + EVERGREEN_CRTC2_REGISTER_OFFSET, 0);
		FUNC2(GRPH_INT_CONTROL + EVERGREEN_CRTC3_REGISTER_OFFSET, 0);
	}
	if (rdev->num_crtc >= 6) {
		FUNC2(GRPH_INT_CONTROL + EVERGREEN_CRTC4_REGISTER_OFFSET, 0);
		FUNC2(GRPH_INT_CONTROL + EVERGREEN_CRTC5_REGISTER_OFFSET, 0);
	}

	/* only one DAC on DCE6 */
	if (!FUNC0(rdev))
		FUNC2(DACA_AUTODETECT_INT_CONTROL, 0);
	FUNC2(DACB_AUTODETECT_INT_CONTROL, 0);

	tmp = FUNC1(DC_HPD1_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC2(DC_HPD1_INT_CONTROL, tmp);
	tmp = FUNC1(DC_HPD2_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC2(DC_HPD2_INT_CONTROL, tmp);
	tmp = FUNC1(DC_HPD3_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC2(DC_HPD3_INT_CONTROL, tmp);
	tmp = FUNC1(DC_HPD4_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC2(DC_HPD4_INT_CONTROL, tmp);
	tmp = FUNC1(DC_HPD5_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC2(DC_HPD5_INT_CONTROL, tmp);
	tmp = FUNC1(DC_HPD6_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC2(DC_HPD6_INT_CONTROL, tmp);

}