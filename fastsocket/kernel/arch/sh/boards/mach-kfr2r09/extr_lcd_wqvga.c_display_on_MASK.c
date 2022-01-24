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
struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct sh_mobile_lcdc_sys_bus_ops*) ; 
 int /*<<< orphan*/  data_frame_if ; 
 int /*<<< orphan*/  data_gamma ; 
 int /*<<< orphan*/  data_panel ; 
 int /*<<< orphan*/  data_power ; 
 int /*<<< orphan*/  data_timing ; 
 int /*<<< orphan*/  data_timing_src ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct sh_mobile_lcdc_sys_bus_ops*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ; 

__attribute__((used)) static void FUNC6(void *sohandle,
		       struct sh_mobile_lcdc_sys_bus_ops *so)
{
	/* access protect off */
	FUNC5(sohandle, so, 0, 0xb0);
	FUNC5(sohandle, so, 1, 0x00);

	/* exit deep standby mode */
	FUNC5(sohandle, so, 0, 0xb1);
	FUNC5(sohandle, so, 1, 0x00);

	/* frame memory I/F */
	FUNC5(sohandle, so, 0, 0xb3);
	FUNC3(sohandle, so, data_frame_if, FUNC0(data_frame_if));

	/* display mode and frame memory write mode */
	FUNC5(sohandle, so, 0, 0xb4);
	FUNC5(sohandle, so, 1, 0x00); /* DBI, internal clock */

	/* panel */
	FUNC5(sohandle, so, 0, 0xc0);
	FUNC3(sohandle, so, data_panel, FUNC0(data_panel));

	/* timing (normal) */
	FUNC5(sohandle, so, 0, 0xc1);
	FUNC3(sohandle, so, data_timing, FUNC0(data_timing));

	/* timing (partial) */
	FUNC5(sohandle, so, 0, 0xc2);
	FUNC3(sohandle, so, data_timing, FUNC0(data_timing));

	/* timing (idle) */
	FUNC5(sohandle, so, 0, 0xc3);
	FUNC3(sohandle, so, data_timing, FUNC0(data_timing));

	/* timing (source/VCOM/gate driving) */
	FUNC5(sohandle, so, 0, 0xc4);
	FUNC3(sohandle, so, data_timing_src, FUNC0(data_timing_src));

	/* gamma (red) */
	FUNC5(sohandle, so, 0, 0xc8);
	FUNC3(sohandle, so, data_gamma, FUNC0(data_gamma));

	/* gamma (green) */
	FUNC5(sohandle, so, 0, 0xc9);
	FUNC3(sohandle, so, data_gamma, FUNC0(data_gamma));

	/* gamma (blue) */
	FUNC5(sohandle, so, 0, 0xca);
	FUNC3(sohandle, so, data_gamma, FUNC0(data_gamma));

	/* power (common) */
	FUNC5(sohandle, so, 0, 0xd0);
	FUNC3(sohandle, so, data_power, FUNC0(data_power));

	/* VCOM */
	FUNC5(sohandle, so, 0, 0xd1);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0x0f);
	FUNC5(sohandle, so, 1, 0x02);

	/* power (normal) */
	FUNC5(sohandle, so, 0, 0xd2);
	FUNC5(sohandle, so, 1, 0x63);
	FUNC5(sohandle, so, 1, 0x24);

	/* power (partial) */
	FUNC5(sohandle, so, 0, 0xd3);
	FUNC5(sohandle, so, 1, 0x63);
	FUNC5(sohandle, so, 1, 0x24);

	/* power (idle) */
	FUNC5(sohandle, so, 0, 0xd4);
	FUNC5(sohandle, so, 1, 0x63);
	FUNC5(sohandle, so, 1, 0x24);

	FUNC5(sohandle, so, 0, 0xd8);
	FUNC5(sohandle, so, 1, 0x77);
	FUNC5(sohandle, so, 1, 0x77);

	/* TE signal */
	FUNC5(sohandle, so, 0, 0x35);
	FUNC5(sohandle, so, 1, 0x00);

	/* TE signal line */
	FUNC5(sohandle, so, 0, 0x44);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0x00);

	/* column address */
	FUNC5(sohandle, so, 0, 0x2a);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0xef);

	/* page address */
	FUNC5(sohandle, so, 0, 0x2b);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0x00);
	FUNC5(sohandle, so, 1, 0x01);
	FUNC5(sohandle, so, 1, 0x8f);

	/* exit sleep mode */
	FUNC5(sohandle, so, 0, 0x11);

	FUNC2(120);

	/* clear vram */
	FUNC1(sohandle, so);

	/* display ON */
	FUNC5(sohandle, so, 0, 0x29);
	FUNC2(1);

	FUNC4(sohandle, so);
}