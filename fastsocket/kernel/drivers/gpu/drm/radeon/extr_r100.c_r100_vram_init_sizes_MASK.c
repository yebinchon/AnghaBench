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
typedef  int uint32_t ;
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ aper_size; scalar_t__ visible_vram_size; int real_vram_size; scalar_t__ mc_vram_size; int /*<<< orphan*/  aper_base; } ;
struct radeon_device {int flags; TYPE_1__ mc; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CONFIG_APER_SIZE ; 
 int /*<<< orphan*/  RADEON_CONFIG_MEMSIZE ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  RADEON_NB_TOM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 

void FUNC5(struct radeon_device *rdev)
{
	u64 config_aper_size;

	/* work out accessible VRAM */
	rdev->mc.aper_base = FUNC3(rdev->pdev, 0);
	rdev->mc.aper_size = FUNC2(rdev->pdev, 0);
	rdev->mc.visible_vram_size = FUNC4(rdev);
	/* FIXME we don't use the second aperture yet when we could use it */
	if (rdev->mc.visible_vram_size > rdev->mc.aper_size)
		rdev->mc.visible_vram_size = rdev->mc.aper_size;
	config_aper_size = FUNC0(RADEON_CONFIG_APER_SIZE);
	if (rdev->flags & RADEON_IS_IGP) {
		uint32_t tom;
		/* read NB_TOM to get the amount of ram stolen for the GPU */
		tom = FUNC0(RADEON_NB_TOM);
		rdev->mc.real_vram_size = (((tom >> 16) - (tom & 0xffff) + 1) << 16);
		FUNC1(RADEON_CONFIG_MEMSIZE, rdev->mc.real_vram_size);
		rdev->mc.mc_vram_size = rdev->mc.real_vram_size;
	} else {
		rdev->mc.real_vram_size = FUNC0(RADEON_CONFIG_MEMSIZE);
		/* Some production boards of m6 will report 0
		 * if it's 8 MB
		 */
		if (rdev->mc.real_vram_size == 0) {
			rdev->mc.real_vram_size = 8192 * 1024;
			FUNC1(RADEON_CONFIG_MEMSIZE, rdev->mc.real_vram_size);
		}
		/* Fix for RN50, M6, M7 with 8/16/32(??) MBs of VRAM - 
		 * Novell bug 204882 + along with lots of ubuntu ones
		 */
		if (rdev->mc.aper_size > config_aper_size)
			config_aper_size = rdev->mc.aper_size;

		if (config_aper_size > rdev->mc.real_vram_size)
			rdev->mc.mc_vram_size = config_aper_size;
		else
			rdev->mc.mc_vram_size = rdev->mc.real_vram_size;
	}
}