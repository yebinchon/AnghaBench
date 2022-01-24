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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVIVO_D1VGA_CONTROL ; 
 int /*<<< orphan*/  AVIVO_D2VGA_CONTROL ; 
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ; 
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ; 
 int /*<<< orphan*/  AVIVO_VGA_RENDER_CONTROL ; 
 int AVIVO_VGA_VSTATUS_CNTL_MASK ; 
 int /*<<< orphan*/  RADEON_GPIOPAD_A ; 
 int /*<<< orphan*/  RADEON_GPIOPAD_EN ; 
 int /*<<< orphan*/  RADEON_GPIOPAD_MASK ; 
 int RADEON_SCK_PRESCALE_MASK ; 
 int RADEON_SCK_PRESCALE_SHIFT ; 
 int /*<<< orphan*/  RADEON_SEPROM_CNTL1 ; 
 int /*<<< orphan*/  RADEON_VIPH_CONTROL ; 
 int RADEON_VIPH_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RV370_BUS_BIOS_DIS_ROM ; 
 int /*<<< orphan*/  RV370_BUS_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static bool FUNC3(struct radeon_device *rdev)
{
	uint32_t seprom_cntl1;
	uint32_t viph_control;
	uint32_t bus_cntl;
	uint32_t d1vga_control;
	uint32_t d2vga_control;
	uint32_t vga_render_control;
	uint32_t gpiopad_a;
	uint32_t gpiopad_en;
	uint32_t gpiopad_mask;
	bool r;

	seprom_cntl1 = FUNC0(RADEON_SEPROM_CNTL1);
	viph_control = FUNC0(RADEON_VIPH_CONTROL);
	bus_cntl = FUNC0(RV370_BUS_CNTL);
	d1vga_control = FUNC0(AVIVO_D1VGA_CONTROL);
	d2vga_control = FUNC0(AVIVO_D2VGA_CONTROL);
	vga_render_control = FUNC0(AVIVO_VGA_RENDER_CONTROL);
	gpiopad_a = FUNC0(RADEON_GPIOPAD_A);
	gpiopad_en = FUNC0(RADEON_GPIOPAD_EN);
	gpiopad_mask = FUNC0(RADEON_GPIOPAD_MASK);

	FUNC1(RADEON_SEPROM_CNTL1,
	       ((seprom_cntl1 & ~RADEON_SCK_PRESCALE_MASK) |
		(0xc << RADEON_SCK_PRESCALE_SHIFT)));
	FUNC1(RADEON_GPIOPAD_A, 0);
	FUNC1(RADEON_GPIOPAD_EN, 0);
	FUNC1(RADEON_GPIOPAD_MASK, 0);

	/* disable VIP */
	FUNC1(RADEON_VIPH_CONTROL, (viph_control & ~RADEON_VIPH_EN));

	/* enable the rom */
	FUNC1(RV370_BUS_CNTL, (bus_cntl & ~RV370_BUS_BIOS_DIS_ROM));

	/* Disable VGA mode */
	FUNC1(AVIVO_D1VGA_CONTROL,
	       (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
		AVIVO_DVGA_CONTROL_TIMING_SELECT)));
	FUNC1(AVIVO_D2VGA_CONTROL,
	       (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
		AVIVO_DVGA_CONTROL_TIMING_SELECT)));
	FUNC1(AVIVO_VGA_RENDER_CONTROL,
	       (vga_render_control & ~AVIVO_VGA_VSTATUS_CNTL_MASK));

	r = FUNC2(rdev);

	/* restore regs */
	FUNC1(RADEON_SEPROM_CNTL1, seprom_cntl1);
	FUNC1(RADEON_VIPH_CONTROL, viph_control);
	FUNC1(RV370_BUS_CNTL, bus_cntl);
	FUNC1(AVIVO_D1VGA_CONTROL, d1vga_control);
	FUNC1(AVIVO_D2VGA_CONTROL, d2vga_control);
	FUNC1(AVIVO_VGA_RENDER_CONTROL, vga_render_control);
	FUNC1(RADEON_GPIOPAD_A, gpiopad_a);
	FUNC1(RADEON_GPIOPAD_EN, gpiopad_en);
	FUNC1(RADEON_GPIOPAD_MASK, gpiopad_mask);
	return r;
}