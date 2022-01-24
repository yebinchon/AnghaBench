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
typedef  int u16 ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int ID_MI1320 ; 
 int ID_MI2020 ; 
 int ID_OV2640 ; 
 int ID_OV9655 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ _MI1320_ ; 
 scalar_t__ _MI2020_ ; 
 scalar_t__ _OV2640_ ; 
 scalar_t__ _OV9655_ ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev,
				u16 vendor_id, u16 product_id)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 probe, nb26, nb96, nOV, ntry;

	if (product_id == 0xf191)
		sd->sensor = ID_MI1320;

	if (sd->sensor == 0xff) {
		FUNC1(gspca_dev, 0xc0, 2, 0x0000, 0x0004, 1, &probe);
		FUNC1(gspca_dev, 0xc0, 2, 0x0000, 0x0004, 1, &probe);

		FUNC2(gspca_dev, 0x40, 1, 0x0000, 0x0000, 0, NULL);
		FUNC3(3);
		FUNC2(gspca_dev, 0x40, 1, 0x0010, 0x0010, 0, NULL);
		FUNC3(3);
		FUNC2(gspca_dev, 0x40, 1, 0x0008, 0x00c0, 0, NULL);
		FUNC3(3);
		FUNC2(gspca_dev, 0x40, 1, 0x0001, 0x00c1, 0, NULL);
		FUNC3(3);
		FUNC2(gspca_dev, 0x40, 1, 0x0001, 0x00c2, 0, NULL);
		FUNC3(3);
		FUNC2(gspca_dev, 0x40, 1, 0x0020, 0x0006, 0, NULL);
		FUNC3(3);
		FUNC2(gspca_dev, 0x40, 1, 0x006a, 0x000d, 0, NULL);
		FUNC3(56);

		FUNC0(D_PROBE, "probing for sensor MI2020 or OVXXXX");
		nOV = 0;
		for (ntry = 0; ntry < 4; ntry++) {
			FUNC2(gspca_dev, 0x40, 1, 0x0040, 0x0000, 0, NULL);
			FUNC3(3);
			FUNC2(gspca_dev, 0x40, 1, 0x0063, 0x0006, 0, NULL);
			FUNC3(3);
			FUNC2(gspca_dev, 0x40, 1, 0x7a00, 0x8030, 0, NULL);
			FUNC3(10);
			FUNC1(gspca_dev, 0xc0, 2, 0x7a00, 0x8030, 1, &probe);
			FUNC0(D_PROBE, "probe=0x%02x", probe);
			if (probe == 0xff)
				nOV++;
		}

		if (nOV) {
			FUNC0(D_PROBE, "0xff -> OVXXXX");
			FUNC0(D_PROBE, "probing for sensor OV2640 or OV9655");

			nb26 = nb96 = 0;
			for (ntry = 0; ntry < 4; ntry++) {
				FUNC2(gspca_dev, 0x40, 1, 0x0040, 0x0000,
						0, NULL);
				FUNC3(3);
				FUNC2(gspca_dev, 0x40, 1, 0x6000, 0x800a,
						0, NULL);
				FUNC3(10);

				/* Wait for 26(OV2640) or 96(OV9655) */
				FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x800a,
						1, &probe);

				if (probe == 0x26 || probe == 0x40) {
					FUNC0(D_PROBE,
						"probe=0x%02x -> OV2640",
						probe);
					sd->sensor = ID_OV2640;
					nb26 += 4;
					break;
				}
				if (probe == 0x96 || probe == 0x55) {
					FUNC0(D_PROBE,
						"probe=0x%02x -> OV9655",
						probe);
					sd->sensor = ID_OV9655;
					nb96 += 4;
					break;
				}
				FUNC0(D_PROBE, "probe=0x%02x", probe);
				if (probe == 0x00)
					nb26++;
				if (probe == 0xff)
					nb96++;
				FUNC3(3);
			}
			if (nb26 < 4 && nb96 < 4)
				return -1;
		} else {
			FUNC0(D_PROBE, "Not any 0xff -> MI2020");
			sd->sensor = ID_MI2020;
		}
	}

	if (_MI1320_) {
		FUNC0(D_PROBE, "05e3:f191 sensor MI1320 (1.3M)");
	} else if (_MI2020_) {
		FUNC0(D_PROBE, "05e3:0503 sensor MI2020 (2.0M)");
	} else if (_OV9655_) {
		FUNC0(D_PROBE, "05e3:0503 sensor OV9655 (1.3M)");
	} else if (_OV2640_) {
		FUNC0(D_PROBE, "05e3:0503 sensor OV2640 (2.0M)");
	} else {
		FUNC0(D_PROBE, "***** Unknown sensor *****");
		return -1;
	}

	return 0;
}