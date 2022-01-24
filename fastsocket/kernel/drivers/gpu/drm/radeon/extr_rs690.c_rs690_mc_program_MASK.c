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
struct TYPE_2__ {int vram_start; int vram_end; } ;
struct radeon_device {TYPE_1__ mc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_000100_MCCFG_FB_LOCATION ; 
 int /*<<< orphan*/  R_000134_HDP_FB_LOCATION ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct rv515_mc_save*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct rv515_mc_save*) ; 

__attribute__((used)) static void FUNC9(struct radeon_device *rdev)
{
	struct rv515_mc_save save;

	/* Stops all mc clients */
	FUNC8(rdev, &save);

	/* Wait for mc idle */
	if (FUNC6(rdev))
		FUNC5(rdev->dev, "Wait MC idle timeout before updating MC.\n");
	/* Program MC, should be a 32bits limited address space */
	FUNC4(R_000100_MCCFG_FB_LOCATION,
			FUNC0(rdev->mc.vram_start >> 16) |
			FUNC1(rdev->mc.vram_end >> 16));
	FUNC3(R_000134_HDP_FB_LOCATION,
		FUNC2(rdev->mc.vram_start >> 16));

	FUNC7(rdev, &save);
}