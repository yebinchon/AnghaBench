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
struct rv515_mc_save {int dummy; } ;
struct TYPE_2__ {int vram_start; int vram_end; int gtt_start; int gtt_end; int /*<<< orphan*/  agp_base; int /*<<< orphan*/  real_vram_size; } ;
struct radeon_device {int flags; TYPE_1__ mc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  R_000004_MC_FB_LOCATION ; 
 int /*<<< orphan*/  R_000005_MC_AGP_LOCATION ; 
 int /*<<< orphan*/  R_000006_AGP_BASE ; 
 int /*<<< orphan*/  R_000007_AGP_BASE_2 ; 
 int /*<<< orphan*/  R_0000F8_CONFIG_MEMSIZE ; 
 int /*<<< orphan*/  R_000134_HDP_FB_LOCATION ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct rv515_mc_save*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,struct rv515_mc_save*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct radeon_device *rdev)
{
	struct rv515_mc_save save;

	/* Stops all mc clients */
	FUNC12(rdev, &save);

	/* Wait for mc idle */
	if (FUNC10(rdev))
		FUNC8(rdev->dev, "Wait MC idle timeout before updating MC.\n");
	/* Write VRAM size in case we are limiting it */
	FUNC6(R_0000F8_CONFIG_MEMSIZE, rdev->mc.real_vram_size);
	/* Program MC, should be a 32bits limited address space */
	FUNC7(R_000004_MC_FB_LOCATION,
			FUNC0(rdev->mc.vram_start >> 16) |
			FUNC1(rdev->mc.vram_end >> 16));
	FUNC6(R_000134_HDP_FB_LOCATION,
		FUNC5(rdev->mc.vram_start >> 16));
	if (rdev->flags & RADEON_IS_AGP) {
		FUNC7(R_000005_MC_AGP_LOCATION,
			FUNC2(rdev->mc.gtt_start >> 16) |
			FUNC3(rdev->mc.gtt_end >> 16));
		FUNC7(R_000006_AGP_BASE, FUNC9(rdev->mc.agp_base));
		FUNC7(R_000007_AGP_BASE_2,
			FUNC4(FUNC13(rdev->mc.agp_base)));
	} else {
		FUNC7(R_000005_MC_AGP_LOCATION, 0xFFFFFFFF);
		FUNC7(R_000006_AGP_BASE, 0);
		FUNC7(R_000007_AGP_BASE_2, 0);
	}

	FUNC11(rdev, &save);
}