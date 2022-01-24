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
typedef  enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;

/* Variables and functions */
 int RADEON_FP2_DETECT_SENSE ; 
 int /*<<< orphan*/  RADEON_FP2_GEN_CNTL ; 
 int RADEON_FP_DETECT_SENSE ; 
 int /*<<< orphan*/  RADEON_FP_GEN_CNTL ; 
#define  RADEON_HPD_1 129 
#define  RADEON_HPD_2 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
	bool connected = false;

	switch (hpd) {
	case RADEON_HPD_1:
		if (FUNC0(RADEON_FP_GEN_CNTL) & RADEON_FP_DETECT_SENSE)
			connected = true;
		break;
	case RADEON_HPD_2:
		if (FUNC0(RADEON_FP2_GEN_CNTL) & RADEON_FP2_DETECT_SENSE)
			connected = true;
		break;
	default:
		break;
	}
	return connected;
}