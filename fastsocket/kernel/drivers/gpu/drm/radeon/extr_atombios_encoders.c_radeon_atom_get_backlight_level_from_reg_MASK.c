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
typedef  int u8 ;
typedef  int u32 ;
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 int ATOM_S2_CURRENT_BL_LEVEL_MASK ; 
 int ATOM_S2_CURRENT_BL_LEVEL_SHIFT ; 
 scalar_t__ CHIP_R600 ; 
 int /*<<< orphan*/  R600_BIOS_2_SCRATCH ; 
 int /*<<< orphan*/  RADEON_BIOS_2_SCRATCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8
FUNC1(struct radeon_device *rdev)
{
	u8 backlight_level;
	u32 bios_2_scratch;

	if (rdev->family >= CHIP_R600)
		bios_2_scratch = FUNC0(R600_BIOS_2_SCRATCH);
	else
		bios_2_scratch = FUNC0(RADEON_BIOS_2_SCRATCH);

	backlight_level = ((bios_2_scratch & ATOM_S2_CURRENT_BL_LEVEL_MASK) >>
			   ATOM_S2_CURRENT_BL_LEVEL_SHIFT);

	return backlight_level;
}