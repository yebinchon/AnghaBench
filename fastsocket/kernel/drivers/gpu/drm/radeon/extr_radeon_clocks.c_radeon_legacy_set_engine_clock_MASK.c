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
typedef  int uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CLK_PIN_CNTL ; 
 int RADEON_DONT_USE_XTALIN ; 
 int /*<<< orphan*/  RADEON_M_SPLL_REF_FB_DIV ; 
 int /*<<< orphan*/  RADEON_SCLK_CNTL ; 
 int RADEON_SCLK_SRC_SEL_MASK ; 
 int /*<<< orphan*/  RADEON_SPLL_CNTL ; 
 int RADEON_SPLL_FB_DIV_MASK ; 
 int RADEON_SPLL_FB_DIV_SHIFT ; 
 int RADEON_SPLL_PVG_MASK ; 
 int RADEON_SPLL_PVG_SHIFT ; 
 int RADEON_SPLL_RESET ; 
 int RADEON_SPLL_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct radeon_device *rdev,
				    uint32_t eng_clock)
{
	uint32_t tmp;
	int fb_div, post_div;

	/* XXX: wait for idle */

	eng_clock = FUNC2(rdev, eng_clock, &fb_div, &post_div);

	tmp = FUNC0(RADEON_CLK_PIN_CNTL);
	tmp &= ~RADEON_DONT_USE_XTALIN;
	FUNC1(RADEON_CLK_PIN_CNTL, tmp);

	tmp = FUNC0(RADEON_SCLK_CNTL);
	tmp &= ~RADEON_SCLK_SRC_SEL_MASK;
	FUNC1(RADEON_SCLK_CNTL, tmp);

	FUNC3(10);

	tmp = FUNC0(RADEON_SPLL_CNTL);
	tmp |= RADEON_SPLL_SLEEP;
	FUNC1(RADEON_SPLL_CNTL, tmp);

	FUNC3(2);

	tmp = FUNC0(RADEON_SPLL_CNTL);
	tmp |= RADEON_SPLL_RESET;
	FUNC1(RADEON_SPLL_CNTL, tmp);

	FUNC3(200);

	tmp = FUNC0(RADEON_M_SPLL_REF_FB_DIV);
	tmp &= ~(RADEON_SPLL_FB_DIV_MASK << RADEON_SPLL_FB_DIV_SHIFT);
	tmp |= (fb_div & RADEON_SPLL_FB_DIV_MASK) << RADEON_SPLL_FB_DIV_SHIFT;
	FUNC1(RADEON_M_SPLL_REF_FB_DIV, tmp);

	/* XXX: verify on different asics */
	tmp = FUNC0(RADEON_SPLL_CNTL);
	tmp &= ~RADEON_SPLL_PVG_MASK;
	if ((eng_clock * post_div) >= 90000)
		tmp |= (0x7 << RADEON_SPLL_PVG_SHIFT);
	else
		tmp |= (0x4 << RADEON_SPLL_PVG_SHIFT);
	FUNC1(RADEON_SPLL_CNTL, tmp);

	tmp = FUNC0(RADEON_SPLL_CNTL);
	tmp &= ~RADEON_SPLL_SLEEP;
	FUNC1(RADEON_SPLL_CNTL, tmp);

	FUNC3(2);

	tmp = FUNC0(RADEON_SPLL_CNTL);
	tmp &= ~RADEON_SPLL_RESET;
	FUNC1(RADEON_SPLL_CNTL, tmp);

	FUNC3(200);

	tmp = FUNC0(RADEON_SCLK_CNTL);
	tmp &= ~RADEON_SCLK_SRC_SEL_MASK;
	switch (post_div) {
	case 1:
	default:
		tmp |= 1;
		break;
	case 2:
		tmp |= 2;
		break;
	case 4:
		tmp |= 3;
		break;
	case 8:
		tmp |= 4;
		break;
	}
	FUNC1(RADEON_SCLK_CNTL, tmp);

	FUNC3(20);

	tmp = FUNC0(RADEON_CLK_PIN_CNTL);
	tmp |= RADEON_DONT_USE_XTALIN;
	FUNC1(RADEON_CLK_PIN_CNTL, tmp);

	FUNC3(10);
}