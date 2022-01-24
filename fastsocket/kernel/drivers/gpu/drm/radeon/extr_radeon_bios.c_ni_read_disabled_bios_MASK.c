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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVIVO_D1VGA_CONTROL ; 
 int /*<<< orphan*/  AVIVO_D2VGA_CONTROL ; 
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ; 
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ; 
 int /*<<< orphan*/  AVIVO_VGA_RENDER_CONTROL ; 
 int AVIVO_VGA_VSTATUS_CNTL_MASK ; 
 int R600_BIOS_ROM_DIS ; 
 int /*<<< orphan*/  R600_BUS_CNTL ; 
 int /*<<< orphan*/  R600_ROM_CNTL ; 
 int R600_SCK_OVERWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static bool FUNC3(struct radeon_device *rdev)
{
	u32 bus_cntl;
	u32 d1vga_control;
	u32 d2vga_control;
	u32 vga_render_control;
	u32 rom_cntl;
	bool r;

	bus_cntl = FUNC0(R600_BUS_CNTL);
	d1vga_control = FUNC0(AVIVO_D1VGA_CONTROL);
	d2vga_control = FUNC0(AVIVO_D2VGA_CONTROL);
	vga_render_control = FUNC0(AVIVO_VGA_RENDER_CONTROL);
	rom_cntl = FUNC0(R600_ROM_CNTL);

	/* enable the rom */
	FUNC1(R600_BUS_CNTL, (bus_cntl & ~R600_BIOS_ROM_DIS));
	/* Disable VGA mode */
	FUNC1(AVIVO_D1VGA_CONTROL,
	       (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
		AVIVO_DVGA_CONTROL_TIMING_SELECT)));
	FUNC1(AVIVO_D2VGA_CONTROL,
	       (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
		AVIVO_DVGA_CONTROL_TIMING_SELECT)));
	FUNC1(AVIVO_VGA_RENDER_CONTROL,
	       (vga_render_control & ~AVIVO_VGA_VSTATUS_CNTL_MASK));
	FUNC1(R600_ROM_CNTL, rom_cntl | R600_SCK_OVERWRITE);

	r = FUNC2(rdev);

	/* restore regs */
	FUNC1(R600_BUS_CNTL, bus_cntl);
	FUNC1(AVIVO_D1VGA_CONTROL, d1vga_control);
	FUNC1(AVIVO_D2VGA_CONTROL, d2vga_control);
	FUNC1(AVIVO_VGA_RENDER_CONTROL, vga_render_control);
	FUNC1(R600_ROM_CNTL, rom_cntl);
	return r;
}