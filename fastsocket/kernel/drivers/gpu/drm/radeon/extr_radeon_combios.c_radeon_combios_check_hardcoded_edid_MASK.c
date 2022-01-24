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
struct TYPE_2__ {int bios_hardcoded_edid_size; struct edid* bios_hardcoded_edid; } ;
struct radeon_device {unsigned char* bios; TYPE_1__ mode_info; int /*<<< orphan*/  ddev; } ;
struct edid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_HARDCODED_EDID_TABLE ; 
 unsigned char EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 struct edid* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 

bool FUNC5(struct radeon_device *rdev)
{
	int edid_info, size;
	struct edid *edid;
	unsigned char *raw;
	edid_info = FUNC0(rdev->ddev, COMBIOS_HARDCODED_EDID_TABLE);
	if (!edid_info)
		return false;

	raw = rdev->bios + edid_info;
	size = EDID_LENGTH * (raw[0x7e] + 1);
	edid = FUNC3(size, GFP_KERNEL);
	if (edid == NULL)
		return false;

	FUNC4((unsigned char *)edid, raw, size);

	if (!FUNC1(edid)) {
		FUNC2(edid);
		return false;
	}

	rdev->mode_info.bios_hardcoded_edid = edid;
	rdev->mode_info.bios_hardcoded_edid_size = size;
	return true;
}