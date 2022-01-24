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
struct TYPE_2__ {int mc_vram_size; int vram_width; scalar_t__ vram_is_ddr; scalar_t__ aper_size; int /*<<< orphan*/  aper_base; int /*<<< orphan*/  vram_mtrr; } ;
struct radeon_device {TYPE_1__ mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char) ; 
 int /*<<< orphan*/  MTRR_TYPE_WRCOMB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 

int FUNC3(struct radeon_device *rdev)
{
	/* Add an MTRR for the VRAM */
	rdev->mc.vram_mtrr = FUNC1(rdev->mc.aper_base, rdev->mc.aper_size,
			MTRR_TYPE_WRCOMB, 1);
	FUNC0("Detected VRAM RAM=%lluM, BAR=%lluM\n",
		rdev->mc.mc_vram_size >> 20,
		(unsigned long long)rdev->mc.aper_size >> 20);
	FUNC0("RAM width %dbits %cDR\n",
			rdev->mc.vram_width, rdev->mc.vram_is_ddr ? 'D' : 'S');
	return FUNC2(rdev);
}