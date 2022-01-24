#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct sd {int chip_revision; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_3__ {int revision; int internal_sensor_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SENSOR_GC0305 ; 
 int /*<<< orphan*/  SENSOR_OV7620 ; 
 int /*<<< orphan*/  SENSOR_PB0330 ; 
 int /*<<< orphan*/  SENSOR_PO2030 ; 
 TYPE_1__* chipset_revision_sensor ; 
 int FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i;
	u8 retbyte;
	u16 retword;

/*fixme: lack of 8b=b3 (11,12)-> 10, 8b=e0 (14,15,16)-> 12 found in gspcav1*/
	FUNC5(gspca_dev, 0x02, 0x0010);
	FUNC4(gspca_dev, 0x0010);
	FUNC5(gspca_dev, 0x01, 0x0000);
	FUNC5(gspca_dev, 0x00, 0x0010);
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0x91, 0x008b);
	FUNC5(gspca_dev, 0x03, 0x0012);
	FUNC5(gspca_dev, 0x01, 0x0012);
	FUNC5(gspca_dev, 0x05, 0x0012);
	retword = FUNC2(gspca_dev, 0x14);
	if (retword != 0)
		return 0x11;			/* HV7131R */
	retword = FUNC2(gspca_dev, 0x15);
	if (retword != 0)
		return 0x11;			/* HV7131R */
	retword = FUNC2(gspca_dev, 0x16);
	if (retword != 0)
		return 0x11;			/* HV7131R */

	FUNC5(gspca_dev, 0x02, 0x0010);
	retword = FUNC4(gspca_dev, 0x000b) << 8;
	retword |= FUNC4(gspca_dev, 0x000a);
	FUNC1(D_PROBE, "probe 3wr vga 1 0x%04x", retword);
	FUNC4(gspca_dev, 0x0010);
	if ((retword & 0xff00) == 0x6400)
		return 0x02;		/* TAS5130C */
	for (i = 0; i < FUNC0(chipset_revision_sensor); i++) {
		if (chipset_revision_sensor[i].revision == retword) {
			sd->chip_revision = retword;
			FUNC6(gspca_dev, SENSOR_PB0330);
			return chipset_revision_sensor[i].internal_sensor_id;
		}
	}

	FUNC5(gspca_dev, 0x01, 0x0000);	/* check PB0330 */
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0xdd, 0x008b);
	FUNC5(gspca_dev, 0x0a, 0x0010);
	FUNC5(gspca_dev, 0x03, 0x0012);
	FUNC5(gspca_dev, 0x01, 0x0012);
	retword = FUNC2(gspca_dev, 0x00);
	if (retword != 0) {
		FUNC1(D_PROBE, "probe 3wr vga type 0a");
		return 0x0a;			/* PB0330 */
	}

	FUNC5(gspca_dev, 0x01, 0x0000);
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0x98, 0x008b);
	FUNC5(gspca_dev, 0x01, 0x0010);
	FUNC5(gspca_dev, 0x03, 0x0012);
	FUNC3(2);
	FUNC5(gspca_dev, 0x01, 0x0012);
	retword = FUNC2(gspca_dev, 0x00);
	if (retword != 0) {
		FUNC1(D_PROBE, "probe 3wr vga type %02x", retword);
		if (retword == 0x0011)			/* gc0303 */
			return 0x0303;
		if (retword == 0x0029)			/* gc0305 */
			FUNC6(gspca_dev, SENSOR_GC0305);
		return retword;
	}

	FUNC5(gspca_dev, 0x01, 0x0000);	/* check OmniVision */
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0xa1, 0x008b);
	FUNC5(gspca_dev, 0x08, 0x008d);
	FUNC5(gspca_dev, 0x06, 0x0010);
	FUNC5(gspca_dev, 0x01, 0x0012);
	FUNC5(gspca_dev, 0x05, 0x0012);
	if (FUNC2(gspca_dev, 0x1c) == 0x007f	/* OV7610 - manufacturer ID */
	    && FUNC2(gspca_dev, 0x1d) == 0x00a2) {
		FUNC6(gspca_dev, SENSOR_OV7620);
		return 0x06;		/* OmniVision confirm ? */
	}

	FUNC5(gspca_dev, 0x01, 0x0000);
	FUNC5(gspca_dev, 0x00, 0x0002);
	FUNC5(gspca_dev, 0x01, 0x0010);
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0xee, 0x008b);
	FUNC5(gspca_dev, 0x03, 0x0012);
	FUNC5(gspca_dev, 0x01, 0x0012);
	FUNC5(gspca_dev, 0x05, 0x0012);
	retword = FUNC2(gspca_dev, 0x00) << 8;	/* ID 0 */
	retword |= FUNC2(gspca_dev, 0x01);		/* ID 1 */
	FUNC1(D_PROBE, "probe 3wr vga 2 0x%04x", retword);
	if (retword == 0x2030) {
		retbyte = FUNC2(gspca_dev, 0x02);	/* revision number */
		FUNC1(D_PROBE, "sensor PO2030 rev 0x%02x", retbyte);
		FUNC6(gspca_dev, SENSOR_PO2030);
		return retword;
	}

	FUNC5(gspca_dev, 0x01, 0x0000);
	FUNC5(gspca_dev, 0x0a, 0x0010);
	FUNC5(gspca_dev, 0xd3, 0x008b);
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0x03, 0x0012);
	FUNC5(gspca_dev, 0x01, 0x0012);
	FUNC5(gspca_dev, 0x05, 0x0012);
	FUNC5(gspca_dev, 0xd3, 0x008b);
	retword = FUNC2(gspca_dev, 0x01);
	if (retword != 0) {
		FUNC1(D_PROBE, "probe 3wr vga type 0a ? ret: %04x", retword);
		return 0x16;			/* adcm2700 (6100/6200) */
	}
	return -1;
}