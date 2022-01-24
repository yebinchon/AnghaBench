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
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ RADEON_CLOCK_CNTL_DATA ; 
 scalar_t__ RADEON_CLOCK_CNTL_INDEX ; 
 int RADEON_PLL_MASK_READ_B ; 
 int /*<<< orphan*/  RADEON_PLL_TEST_CNTL ; 
 int /*<<< orphan*/  RADEON_TEST_DEBUG_MUX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder, unsigned n_tests,
				 unsigned n_wait_loops, unsigned cnt_threshold)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	uint32_t save_pll_test;
	unsigned int i, j;

	FUNC3(RADEON_TEST_DEBUG_MUX, (FUNC0(RADEON_TEST_DEBUG_MUX) & 0xffff60ff) | 0x100);
	save_pll_test = FUNC1(RADEON_PLL_TEST_CNTL);
	FUNC4(RADEON_PLL_TEST_CNTL, save_pll_test & ~RADEON_PLL_MASK_READ_B);

	FUNC5(RADEON_CLOCK_CNTL_INDEX, RADEON_PLL_TEST_CNTL);
	for (i = 0; i < n_tests; i++) {
		FUNC5(RADEON_CLOCK_CNTL_DATA + 3, 0);
		for (j = 0; j < n_wait_loops; j++)
			if (FUNC2(RADEON_CLOCK_CNTL_DATA + 3) >= cnt_threshold)
				break;
	}
	FUNC4(RADEON_PLL_TEST_CNTL, save_pll_test);
	FUNC3(RADEON_TEST_DEBUG_MUX, FUNC0(RADEON_TEST_DEBUG_MUX) & 0xffffe0ff);
}