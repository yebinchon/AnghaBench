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
 scalar_t__ RADEON_SURFACE0_INFO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC1(struct radeon_device *rdev, int reg)
{
	int surf_index = reg * 16;
	FUNC0(RADEON_SURFACE0_INFO + surf_index, 0);
}