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
struct TYPE_2__ {int gtt_start; int gtt_end; int vram_start; int vram_end; int /*<<< orphan*/  agp_base; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_1__ mc; int /*<<< orphan*/  dev; } ;
struct r100_mc_save {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV200 ; 
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  R_000148_MC_FB_LOCATION ; 
 int /*<<< orphan*/  R_00014C_MC_AGP_LOCATION ; 
 int /*<<< orphan*/  R_00015C_AGP_BASE_2 ; 
 int /*<<< orphan*/  R_000170_AGP_BASE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct r100_mc_save*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct r100_mc_save*) ; 
 scalar_t__ FUNC9 (struct radeon_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct radeon_device *rdev)
{
	struct r100_mc_save save;

	/* Stops all mc clients */
	FUNC8(rdev, &save);
	if (rdev->flags & RADEON_IS_AGP) {
		FUNC4(R_00014C_MC_AGP_LOCATION,
			FUNC2(rdev->mc.gtt_start >> 16) |
			FUNC3(rdev->mc.gtt_end >> 16));
		FUNC4(R_000170_AGP_BASE, FUNC6(rdev->mc.agp_base));
		if (rdev->family > CHIP_RV200)
			FUNC4(R_00015C_AGP_BASE_2,
				FUNC10(rdev->mc.agp_base) & 0xff);
	} else {
		FUNC4(R_00014C_MC_AGP_LOCATION, 0x0FFFFFFF);
		FUNC4(R_000170_AGP_BASE, 0);
		if (rdev->family > CHIP_RV200)
			FUNC4(R_00015C_AGP_BASE_2, 0);
	}
	/* Wait for mc idle */
	if (FUNC9(rdev))
		FUNC5(rdev->dev, "Wait for MC idle timeout.\n");
	/* Program MC, should be a 32bits limited address space */
	FUNC4(R_000148_MC_FB_LOCATION,
		FUNC0(rdev->mc.vram_start >> 16) |
		FUNC1(rdev->mc.vram_end >> 16));
	FUNC7(rdev, &save);
}