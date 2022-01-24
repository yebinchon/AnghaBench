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
 int /*<<< orphan*/  RADEON_CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  RADEON_CLOCK_CNTL_INDEX ; 
 int RADEON_PLL_WR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

void FUNC4(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
	FUNC1(RADEON_CLOCK_CNTL_INDEX, ((reg & 0x3f) | RADEON_PLL_WR_EN));
	FUNC3(rdev);
	FUNC0(RADEON_CLOCK_CNTL_DATA, v);
	FUNC2(rdev);
}