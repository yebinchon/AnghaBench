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
 int ENODEV ; 
 int /*<<< orphan*/  magic0_data ; 
 int /*<<< orphan*/  magic1_data ; 
 int /*<<< orphan*/  magic2_data ; 
 int /*<<< orphan*/  magic3_data ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sync_data ; 
 int /*<<< orphan*/  FUNC6 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ; 

int FUNC8(void *board_data, void *sohandle,
			 struct sh_mobile_lcdc_sys_bus_ops *so)
{
	unsigned long xres = 320;
	unsigned long yres = 240;
	int k;

	FUNC5();
	FUNC2(sohandle, so, sync_data, FUNC0(sync_data));

	if (FUNC4(sohandle, so, 0) != 0x1505)
		return -ENODEV;

	FUNC3("Migo-R QVGA LCD Module detected.\n");

	FUNC2(sohandle, so, sync_data, FUNC0(sync_data));
	FUNC7(sohandle, so, 0x00A4, 0x0001);
	FUNC1(10);

	FUNC2(sohandle, so, magic0_data, FUNC0(magic0_data));
	FUNC1(100);

	FUNC2(sohandle, so, magic1_data, FUNC0(magic1_data));
	FUNC7(sohandle, so, 0x0050, 0xef - (yres - 1));
	FUNC7(sohandle, so, 0x0051, 0x00ef);
	FUNC7(sohandle, so, 0x0052, 0x0000);
	FUNC7(sohandle, so, 0x0053, xres - 1);

	FUNC2(sohandle, so, magic2_data, FUNC0(magic2_data));
	FUNC1(10);

	FUNC2(sohandle, so, magic3_data, FUNC0(magic3_data));
	FUNC1(40);

	/* clear GRAM to avoid displaying garbage */

	FUNC7(sohandle, so, 0x0020, 0x0000); /* horiz addr */
	FUNC7(sohandle, so, 0x0021, 0x0000); /* vert addr */

	for (k = 0; k < (xres * 256); k++) /* yes, 256 words per line */
		FUNC7(sohandle, so, 0x0022, 0x0000);

	FUNC7(sohandle, so, 0x0020, 0x0000); /* reset horiz addr */
	FUNC7(sohandle, so, 0x0021, 0x0000); /* reset vert addr */
	FUNC7(sohandle, so, 0x0007, 0x0173);
	FUNC1(40);

	/* enable display */
	FUNC6(sohandle, so, 0x00, 0x22);
	FUNC1(100);
	return 0;
}