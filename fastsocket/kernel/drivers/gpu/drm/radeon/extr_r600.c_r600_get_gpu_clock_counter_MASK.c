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
typedef  unsigned long long uint64_t ;
struct radeon_device {int /*<<< orphan*/  gpu_clock_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLC_CAPTURE_GPU_CLOCK_COUNT ; 
 int /*<<< orphan*/  RLC_GPU_CLOCK_COUNT_LSB ; 
 int /*<<< orphan*/  RLC_GPU_CLOCK_COUNT_MSB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

uint64_t FUNC4(struct radeon_device *rdev)
{
	uint64_t clock;

	FUNC2(&rdev->gpu_clock_mutex);
	FUNC1(RLC_CAPTURE_GPU_CLOCK_COUNT, 1);
	clock = (uint64_t)FUNC0(RLC_GPU_CLOCK_COUNT_LSB) |
	        ((uint64_t)FUNC0(RLC_GPU_CLOCK_COUNT_MSB) << 32ULL);
	FUNC3(&rdev->gpu_clock_mutex);
	return clock;
}