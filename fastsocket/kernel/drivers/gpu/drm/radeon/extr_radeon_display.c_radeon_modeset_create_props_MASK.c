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
struct TYPE_2__ {void* underscan_vborder_property; void* underscan_hborder_property; void* underscan_property; void* tv_std_property; void* load_detect_property; void* tmds_pll_property; void* coherent_mode_property; } ;
struct radeon_device {TYPE_1__ mode_info; int /*<<< orphan*/  ddev; scalar_t__ is_atom_bios; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  radeon_tmds_pll_enum_list ; 
 int /*<<< orphan*/  radeon_tv_std_enum_list ; 
 int /*<<< orphan*/  radeon_underscan_enum_list ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev)
{
	int sz;

	if (rdev->is_atom_bios) {
		rdev->mode_info.coherent_mode_property =
			FUNC4(rdev->ddev, 0 , "coherent", 0, 1);
		if (!rdev->mode_info.coherent_mode_property)
			return -ENOMEM;
	}

	if (!FUNC1(rdev)) {
		sz = FUNC0(radeon_tmds_pll_enum_list);
		rdev->mode_info.tmds_pll_property =
			FUNC3(rdev->ddev, 0,
					    "tmds_pll",
					    radeon_tmds_pll_enum_list, sz);
	}

	rdev->mode_info.load_detect_property =
		FUNC4(rdev->ddev, 0, "load detection", 0, 1);
	if (!rdev->mode_info.load_detect_property)
		return -ENOMEM;

	FUNC2(rdev->ddev);

	sz = FUNC0(radeon_tv_std_enum_list);
	rdev->mode_info.tv_std_property =
		FUNC3(rdev->ddev, 0,
				    "tv standard",
				    radeon_tv_std_enum_list, sz);

	sz = FUNC0(radeon_underscan_enum_list);
	rdev->mode_info.underscan_property =
		FUNC3(rdev->ddev, 0,
				    "underscan",
				    radeon_underscan_enum_list, sz);

	rdev->mode_info.underscan_hborder_property =
		FUNC4(rdev->ddev, 0,
					"underscan hborder", 0, 128);
	if (!rdev->mode_info.underscan_hborder_property)
		return -ENOMEM;

	rdev->mode_info.underscan_vborder_property =
		FUNC4(rdev->ddev, 0,
					"underscan vborder", 0, 128);
	if (!rdev->mode_info.underscan_vborder_property)
		return -ENOMEM;

	return 0;
}