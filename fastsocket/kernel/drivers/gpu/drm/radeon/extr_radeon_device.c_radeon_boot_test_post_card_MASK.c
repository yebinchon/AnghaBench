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
struct TYPE_2__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; scalar_t__ is_atom_bios; scalar_t__ bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(struct radeon_device *rdev)
{
	if (FUNC3(rdev))
		return true;

	if (rdev->bios) {
		FUNC0("GPU not posted. posting now...\n");
		if (rdev->is_atom_bios)
			FUNC1(rdev->mode_info.atom_context);
		else
			FUNC4(rdev->ddev);
		return true;
	} else {
		FUNC2(rdev->dev, "Card not posted and no BIOS - ignoring\n");
		return false;
	}
}