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
typedef  int uint32_t ;
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVIVO_D1VGA_CONTROL ; 
 int /*<<< orphan*/  AVIVO_D2VGA_CONTROL ; 
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ; 
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ; 
 int /*<<< orphan*/  AVIVO_VGA_RENDER_CONTROL ; 
 int AVIVO_VGA_VSTATUS_CNTL_MASK ; 
 scalar_t__ CHIP_RV730 ; 
 int R600_BIOS_ROM_DIS ; 
 int /*<<< orphan*/  R600_BUS_CNTL ; 
 int /*<<< orphan*/  R600_CG_SPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  R600_CG_SPLL_STATUS ; 
 int /*<<< orphan*/  R600_ROM_CNTL ; 
 int R600_SCK_OVERWRITE ; 
 int R600_SPLL_BYPASS_EN ; 
 int R600_SPLL_CHG_STATUS ; 
 int /*<<< orphan*/  RADEON_VIPH_CONTROL ; 
 int RADEON_VIPH_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static bool FUNC3(struct radeon_device *rdev)
{
	uint32_t viph_control;
	uint32_t bus_cntl;
	uint32_t d1vga_control;
	uint32_t d2vga_control;
	uint32_t vga_render_control;
	uint32_t rom_cntl;
	uint32_t cg_spll_func_cntl = 0;
	uint32_t cg_spll_status;
	bool r;

	viph_control = FUNC0(RADEON_VIPH_CONTROL);
	bus_cntl = FUNC0(R600_BUS_CNTL);
	d1vga_control = FUNC0(AVIVO_D1VGA_CONTROL);
	d2vga_control = FUNC0(AVIVO_D2VGA_CONTROL);
	vga_render_control = FUNC0(AVIVO_VGA_RENDER_CONTROL);
	rom_cntl = FUNC0(R600_ROM_CNTL);

	/* disable VIP */
	FUNC1(RADEON_VIPH_CONTROL, (viph_control & ~RADEON_VIPH_EN));
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

	if (rdev->family == CHIP_RV730) {
		cg_spll_func_cntl = FUNC0(R600_CG_SPLL_FUNC_CNTL);

		/* enable bypass mode */
		FUNC1(R600_CG_SPLL_FUNC_CNTL, (cg_spll_func_cntl |
						R600_SPLL_BYPASS_EN));

		/* wait for SPLL_CHG_STATUS to change to 1 */
		cg_spll_status = 0;
		while (!(cg_spll_status & R600_SPLL_CHG_STATUS))
			cg_spll_status = FUNC0(R600_CG_SPLL_STATUS);

		FUNC1(R600_ROM_CNTL, (rom_cntl & ~R600_SCK_OVERWRITE));
	} else
		FUNC1(R600_ROM_CNTL, (rom_cntl | R600_SCK_OVERWRITE));

	r = FUNC2(rdev);

	/* restore regs */
	if (rdev->family == CHIP_RV730) {
		FUNC1(R600_CG_SPLL_FUNC_CNTL, cg_spll_func_cntl);

		/* wait for SPLL_CHG_STATUS to change to 1 */
		cg_spll_status = 0;
		while (!(cg_spll_status & R600_SPLL_CHG_STATUS))
			cg_spll_status = FUNC0(R600_CG_SPLL_STATUS);
	}
	FUNC1(RADEON_VIPH_CONTROL, viph_control);
	FUNC1(R600_BUS_CNTL, bus_cntl);
	FUNC1(AVIVO_D1VGA_CONTROL, d1vga_control);
	FUNC1(AVIVO_D2VGA_CONTROL, d2vga_control);
	FUNC1(AVIVO_VGA_RENDER_CONTROL, vga_render_control);
	FUNC1(R600_ROM_CNTL, rom_cntl);
	return r;
}