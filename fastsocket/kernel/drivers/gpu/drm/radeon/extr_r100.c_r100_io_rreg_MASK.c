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
typedef  scalar_t__ u32 ;
struct radeon_device {scalar_t__ rio_mem_size; scalar_t__ rio_mem; } ;

/* Variables and functions */
 scalar_t__ RADEON_MM_DATA ; 
 scalar_t__ RADEON_MM_INDEX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

u32 FUNC2(struct radeon_device *rdev, u32 reg)
{
	if (reg < rdev->rio_mem_size)
		return FUNC0(rdev->rio_mem + reg);
	else {
		FUNC1(reg, rdev->rio_mem + RADEON_MM_INDEX);
		return FUNC0(rdev->rio_mem + RADEON_MM_DATA);
	}
}