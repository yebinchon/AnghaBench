#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  default_dispclk; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct radeon_atom_ss {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_SS_ON_DCPLL ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_DCPLL ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct radeon_atom_ss*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*,struct radeon_atom_ss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct radeon_device *rdev)
{
	/* always set DCPLL */
	if (FUNC1(rdev))
		FUNC3(rdev, rdev->clock.default_dispclk);
	else if (FUNC0(rdev)) {
		struct radeon_atom_ss ss;
		bool ss_enabled = FUNC4(rdev, &ss,
								   ASIC_INTERNAL_SS_ON_DCPLL,
								   rdev->clock.default_dispclk);
		if (ss_enabled)
			FUNC2(rdev, ATOM_DISABLE, ATOM_DCPLL, -1, &ss);
		/* XXX: DCE5, make sure voltage, dispclk is high enough */
		FUNC3(rdev, rdev->clock.default_dispclk);
		if (ss_enabled)
			FUNC2(rdev, ATOM_ENABLE, ATOM_DCPLL, -1, &ss);
	}

}