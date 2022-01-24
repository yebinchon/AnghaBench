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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CRTC2_CRNT_FRAME ; 
 int /*<<< orphan*/  RADEON_CRTC_CRNT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

u32 FUNC1(struct radeon_device *rdev, int crtc)
{
	if (crtc == 0)
		return FUNC0(RADEON_CRTC_CRNT_FRAME);
	else
		return FUNC0(RADEON_CRTC2_CRNT_FRAME);
}