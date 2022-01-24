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
struct gspca_dev {int usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_PROBE ; 
 int OV534_REG_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  bridge_init ; 
 int /*<<< orphan*/  bridge_init_2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  sensor_init ; 
 int /*<<< orphan*/  sensor_init_2 ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct gspca_dev *gspca_dev)
{
	u16 sensor_id;

	/* reset bridge */
	FUNC3(gspca_dev, 0xe7, 0x3a);
	FUNC3(gspca_dev, 0xe0, 0x08);
	FUNC2(100);

	/* initialize the sensor address */
	FUNC3(gspca_dev, OV534_REG_ADDRESS, 0x60);

	/* reset sensor */
	FUNC7(gspca_dev, 0x12, 0x80);
	FUNC2(10);

	/* probe the sensor */
	FUNC5(gspca_dev, 0x0a);
	sensor_id = FUNC5(gspca_dev, 0x0a) << 8;
	FUNC5(gspca_dev, 0x0b);
	sensor_id |= FUNC5(gspca_dev, 0x0b);
	FUNC1(D_PROBE, "Sensor ID: %04x", sensor_id);

	/* initialize */
	FUNC4(gspca_dev, bridge_init,
			FUNC0(bridge_init));
	FUNC6(gspca_dev, sensor_init,
			FUNC0(sensor_init));
	FUNC4(gspca_dev, bridge_init_2,
			FUNC0(bridge_init_2));
	FUNC6(gspca_dev, sensor_init_2,
			FUNC0(sensor_init_2));
	FUNC3(gspca_dev, 0xe0, 0x00);
	FUNC3(gspca_dev, 0xe0, 0x01);
	FUNC8(gspca_dev, 0);
	FUNC3(gspca_dev, 0xe0, 0x00);

	return gspca_dev->usb_err;
}