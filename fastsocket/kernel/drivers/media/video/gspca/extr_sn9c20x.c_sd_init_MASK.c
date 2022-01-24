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
struct sd {int i2c_addr; int flags; int sensor; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int ENODEV ; 
 int LED_REVERSE ; 
#define  SENSOR_HV7131R 137 
#define  SENSOR_MT9M001 136 
#define  SENSOR_MT9M111 135 
#define  SENSOR_MT9M112 134 
#define  SENSOR_MT9VPRB 133 
#define  SENSOR_OV7660 132 
#define  SENSOR_OV7670 131 
#define  SENSOR_OV9650 130 
#define  SENSOR_OV9655 129 
#define  SENSOR_SOI968 128 
 int** bridge_init ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 scalar_t__ FUNC12 (struct gspca_dev*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC15(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i;
	u8 value;
	u8 i2c_init[9] =
		{0x80, sd->i2c_addr, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03};

	for (i = 0; i < FUNC0(bridge_init); i++) {
		value = bridge_init[i][1];
		if (FUNC12(gspca_dev, bridge_init[i][0], &value, 1) < 0) {
			FUNC1("Device initialization failed");
			return -ENODEV;
		}
	}

	if (sd->flags & LED_REVERSE)
		FUNC13(gspca_dev, 0x1006, 0x00);
	else
		FUNC13(gspca_dev, 0x1006, 0x20);

	if (FUNC12(gspca_dev, 0x10c0, i2c_init, 9) < 0) {
		FUNC1("Device initialization failed");
		return -ENODEV;
	}

	switch (sd->sensor) {
	case SENSOR_OV9650:
		if (FUNC10(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("OV9650 sensor detected");
		break;
	case SENSOR_OV9655:
		if (FUNC11(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("OV9655 sensor detected");
		break;
	case SENSOR_SOI968:
		if (FUNC14(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("SOI968 sensor detected");
		break;
	case SENSOR_OV7660:
		if (FUNC8(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("OV7660 sensor detected");
		break;
	case SENSOR_OV7670:
		if (FUNC9(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("OV7670 sensor detected");
		break;
	case SENSOR_MT9VPRB:
		if (FUNC7(gspca_dev) < 0)
			return -ENODEV;
		break;
	case SENSOR_MT9M111:
		if (FUNC5(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("MT9M111 sensor detected");
		break;
	case SENSOR_MT9M112:
		if (FUNC6(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("MT9M112 sensor detected");
		break;
	case SENSOR_MT9M001:
		if (FUNC4(gspca_dev) < 0)
			return -ENODEV;
		break;
	case SENSOR_HV7131R:
		if (FUNC2(gspca_dev) < 0)
			return -ENODEV;
		FUNC3("HV7131R sensor detected");
		break;
	default:
		FUNC3("Unsupported Sensor");
		return -ENODEV;
	}

	return 0;
}