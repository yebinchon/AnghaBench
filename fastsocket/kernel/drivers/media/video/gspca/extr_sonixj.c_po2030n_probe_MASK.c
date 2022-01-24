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
typedef  int u16 ;
struct sd {int i2c_addr; int /*<<< orphan*/  sensor; } ;
struct gspca_dev {int* usb_buf; scalar_t__ usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SENSOR_GC0307 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u16 val;

	/* check gc0307 */
	FUNC3(gspca_dev, 0x17, 0x62);
	FUNC3(gspca_dev, 0x01, 0x08);
	FUNC3(gspca_dev, 0x02, 0x22);
	sd->i2c_addr = 0x21;
	FUNC2(gspca_dev, 0x00, 1);
	val = gspca_dev->usb_buf[4];
	FUNC3(gspca_dev, 0x01, 0x29);		/* reset */
	FUNC3(gspca_dev, 0x17, 0x42);
	if (val == 0x99) {			/* gc0307 (?) */
		FUNC0(D_PROBE, "Sensor gc0307");
		sd->sensor = SENSOR_GC0307;
		return;
	}

	/* check po2030n */
	FUNC3(gspca_dev, 0x17, 0x62);
	FUNC3(gspca_dev, 0x01, 0x0a);
	sd->i2c_addr = 0x6e;
	FUNC2(gspca_dev, 0x00, 2);
	val = (gspca_dev->usb_buf[3] << 8) | gspca_dev->usb_buf[4];
	FUNC3(gspca_dev, 0x01, 0x29);
	FUNC3(gspca_dev, 0x17, 0x42);
	if (gspca_dev->usb_err < 0)
		return;
	if (val == 0x2030) {
		FUNC0(D_PROBE, "Sensor po2030n");
/*		sd->sensor = SENSOR_PO2030N; */
	} else {
		FUNC1("Unknown sensor ID %04x", val);
	}
}