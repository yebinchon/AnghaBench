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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int RADEON_RBBM_ACTIVE ; 
 int /*<<< orphan*/  RADEON_RBBM_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(struct radeon_device *rdev)
{
	if (FUNC0(RADEON_RBBM_STATUS) & RADEON_RBBM_ACTIVE)
		return false;
	else
		return true;
}