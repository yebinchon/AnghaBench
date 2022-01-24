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
typedef  enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  RADEON_HPD_1 129 
#define  RADEON_HPD_2 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_007D04_DC_HOT_PLUG_DETECT1_INT_STATUS ; 
 int /*<<< orphan*/  R_007D14_DC_HOT_PLUG_DETECT2_INT_STATUS ; 

bool FUNC3(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
	u32 tmp;
	bool connected = false;

	switch (hpd) {
	case RADEON_HPD_1:
		tmp = FUNC2(R_007D04_DC_HOT_PLUG_DETECT1_INT_STATUS);
		if (FUNC0(tmp))
			connected = true;
		break;
	case RADEON_HPD_2:
		tmp = FUNC2(R_007D14_DC_HOT_PLUG_DETECT2_INT_STATUS);
		if (FUNC1(tmp))
			connected = true;
		break;
	default:
		break;
	}
	return connected;
}