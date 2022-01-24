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
struct input_dev {int dummy; } ;
struct gc {int* pads; struct input_dev** dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_THUMBL ; 
 int /*<<< orphan*/  BTN_THUMBR ; 
 size_t GC_DDR ; 
 int GC_MAX_DEVICES ; 
#define  GC_PSX_ANALOG 131 
 int GC_PSX_BYTES ; 
#define  GC_PSX_NEGCON 130 
#define  GC_PSX_NORMAL 129 
#define  GC_PSX_RUMBLE 128 
 int /*<<< orphan*/ * gc_psx_abs ; 
 int /*<<< orphan*/ * gc_psx_btn ; 
 int /*<<< orphan*/ * gc_psx_ddr_btn ; 
 int /*<<< orphan*/  FUNC0 (struct gc*,unsigned char**,unsigned char*) ; 
 int* gc_status_bit ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct gc *gc)
{
	unsigned char data[GC_MAX_DEVICES][GC_PSX_BYTES];
	unsigned char id[GC_MAX_DEVICES];
	struct input_dev *dev;
	int i, j;

	FUNC0(gc, data, id);

	for (i = 0; i < GC_MAX_DEVICES; i++) {

		dev = gc->dev[i];
		if (!dev)
			continue;

		switch (id[i]) {

			case GC_PSX_RUMBLE:

				FUNC2(dev, BTN_THUMBL, ~data[i][0] & 0x04);
				FUNC2(dev, BTN_THUMBR, ~data[i][0] & 0x02);

			case GC_PSX_NEGCON:
			case GC_PSX_ANALOG:

				if (gc->pads[GC_DDR] & gc_status_bit[i]) {
					for(j = 0; j < 4; j++)
						FUNC2(dev, gc_psx_ddr_btn[j], ~data[i][0] & (0x10 << j));
				} else {
					for (j = 0; j < 4; j++)
						FUNC1(dev, gc_psx_abs[j + 2], data[i][j + 2]);

					FUNC1(dev, ABS_X, 128 + !(data[i][0] & 0x20) * 127 - !(data[i][0] & 0x80) * 128);
					FUNC1(dev, ABS_Y, 128 + !(data[i][0] & 0x40) * 127 - !(data[i][0] & 0x10) * 128);
				}

				for (j = 0; j < 8; j++)
					FUNC2(dev, gc_psx_btn[j], ~data[i][1] & (1 << j));

				FUNC2(dev, BTN_START,  ~data[i][0] & 0x08);
				FUNC2(dev, BTN_SELECT, ~data[i][0] & 0x01);

				FUNC3(dev);

				break;

			case GC_PSX_NORMAL:
				if (gc->pads[GC_DDR] & gc_status_bit[i]) {
					for(j = 0; j < 4; j++)
						FUNC2(dev, gc_psx_ddr_btn[j], ~data[i][0] & (0x10 << j));
				} else {
					FUNC1(dev, ABS_X, 128 + !(data[i][0] & 0x20) * 127 - !(data[i][0] & 0x80) * 128);
					FUNC1(dev, ABS_Y, 128 + !(data[i][0] & 0x40) * 127 - !(data[i][0] & 0x10) * 128);

					/* for some reason if the extra axes are left unset they drift */
					/* for (j = 0; j < 4; j++)
						input_report_abs(dev, gc_psx_abs[j + 2], 128);
					 * This needs to be debugged properly,
					 * maybe fuzz processing needs to be done in input_sync()
					 *				 --vojtech
					 */
				}

				for (j = 0; j < 8; j++)
					FUNC2(dev, gc_psx_btn[j], ~data[i][1] & (1 << j));

				FUNC2(dev, BTN_START,  ~data[i][0] & 0x08);
				FUNC2(dev, BTN_SELECT, ~data[i][0] & 0x01);

				FUNC3(dev);

				break;

			case 0: /* not a pad, ignore */
				break;
		}
	}
}