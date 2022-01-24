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
struct radeon_device {int num_crtc; } ;

/* Variables and functions */
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL_RING0 ; 
 scalar_t__ CP_INT_CNTL_RING1 ; 
 scalar_t__ CP_INT_CNTL_RING2 ; 
 scalar_t__ DACA_AUTODETECT_INT_CONTROL ; 
 scalar_t__ DC_HPD1_INT_CONTROL ; 
 scalar_t__ DC_HPD2_INT_CONTROL ; 
 scalar_t__ DC_HPD3_INT_CONTROL ; 
 scalar_t__ DC_HPD4_INT_CONTROL ; 
 scalar_t__ DC_HPD5_INT_CONTROL ; 
 scalar_t__ DC_HPD6_INT_CONTROL ; 
 int DC_HPDx_INT_POLARITY ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
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
 int FUNC0 (scalar_t__) ; 
 int TRAP_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	u32 tmp;

	FUNC1(CP_INT_CNTL_RING0, CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
	FUNC1(CP_INT_CNTL_RING1, 0);
	FUNC1(CP_INT_CNTL_RING2, 0);
	tmp = FUNC0(DMA_CNTL + DMA0_REGISTER_OFFSET) & ~TRAP_ENABLE;
	FUNC1(DMA_CNTL + DMA0_REGISTER_OFFSET, tmp);
	tmp = FUNC0(DMA_CNTL + DMA1_REGISTER_OFFSET) & ~TRAP_ENABLE;
	FUNC1(DMA_CNTL + DMA1_REGISTER_OFFSET, tmp);
	FUNC1(GRBM_INT_CNTL, 0);
	FUNC1(INT_MASK + EVERGREEN_CRTC0_REGISTER_OFFSET, 0);
	FUNC1(INT_MASK + EVERGREEN_CRTC1_REGISTER_OFFSET, 0);
	if (rdev->num_crtc >= 4) {
		FUNC1(INT_MASK + EVERGREEN_CRTC2_REGISTER_OFFSET, 0);
		FUNC1(INT_MASK + EVERGREEN_CRTC3_REGISTER_OFFSET, 0);
	}
	if (rdev->num_crtc >= 6) {
		FUNC1(INT_MASK + EVERGREEN_CRTC4_REGISTER_OFFSET, 0);
		FUNC1(INT_MASK + EVERGREEN_CRTC5_REGISTER_OFFSET, 0);
	}

	FUNC1(GRPH_INT_CONTROL + EVERGREEN_CRTC0_REGISTER_OFFSET, 0);
	FUNC1(GRPH_INT_CONTROL + EVERGREEN_CRTC1_REGISTER_OFFSET, 0);
	if (rdev->num_crtc >= 4) {
		FUNC1(GRPH_INT_CONTROL + EVERGREEN_CRTC2_REGISTER_OFFSET, 0);
		FUNC1(GRPH_INT_CONTROL + EVERGREEN_CRTC3_REGISTER_OFFSET, 0);
	}
	if (rdev->num_crtc >= 6) {
		FUNC1(GRPH_INT_CONTROL + EVERGREEN_CRTC4_REGISTER_OFFSET, 0);
		FUNC1(GRPH_INT_CONTROL + EVERGREEN_CRTC5_REGISTER_OFFSET, 0);
	}

	FUNC1(DACA_AUTODETECT_INT_CONTROL, 0);

	tmp = FUNC0(DC_HPD1_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC1(DC_HPD1_INT_CONTROL, tmp);
	tmp = FUNC0(DC_HPD2_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC1(DC_HPD2_INT_CONTROL, tmp);
	tmp = FUNC0(DC_HPD3_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC1(DC_HPD3_INT_CONTROL, tmp);
	tmp = FUNC0(DC_HPD4_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC1(DC_HPD4_INT_CONTROL, tmp);
	tmp = FUNC0(DC_HPD5_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC1(DC_HPD5_INT_CONTROL, tmp);
	tmp = FUNC0(DC_HPD6_INT_CONTROL) & DC_HPDx_INT_POLARITY;
	FUNC1(DC_HPD6_INT_CONTROL, tmp);

}