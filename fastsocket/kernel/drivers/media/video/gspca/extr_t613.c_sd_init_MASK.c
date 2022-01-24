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
struct sd {size_t sensor; } ;
struct gspca_dev {int dummy; } ;
struct additional_sensor_data {int const* n3; int const* n4; int n4sz; int reg80; int reg8e; int const* data5; int const* nset8; int const* stream; int /*<<< orphan*/  data3; int /*<<< orphan*/  data2; int /*<<< orphan*/  data1; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  D_STREAM ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 size_t SENSOR_LT168G ; 
 size_t SENSOR_OM6802 ; 
 size_t SENSOR_OTHER ; 
 size_t SENSOR_TAS5130A ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct gspca_dev*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int,int /*<<< orphan*/ ,int) ; 
 struct additional_sensor_data* sensor_data ; 
 int const* sensor_reset ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC14(struct gspca_dev *gspca_dev)
{
	/* some of this registers are not really neded, because
	 * they are overriden by setbrigthness, setcontrast, etc,
	 * but wont hurt anyway, and can help someone with similar webcam
	 * to see the initial parameters.*/
	struct sd *sd = (struct sd *) gspca_dev;
	const struct additional_sensor_data *sensor;
	int i;
	u16 sensor_id;
	u8 test_byte = 0;

	static const u8 read_indexs[] =
		{ 0x0a, 0x0b, 0x66, 0x80, 0x81, 0x8e, 0x8f, 0xa5,
		  0xa6, 0xa8, 0xbb, 0xbc, 0xc6, 0x00 };
	static const u8 n1[] =
			{0x08, 0x03, 0x09, 0x03, 0x12, 0x04};
	static const u8 n2[] =
			{0x08, 0x00};

	sensor_id = (FUNC4(gspca_dev, 0x06) << 8)
			| FUNC4(gspca_dev, 0x07);
	switch (sensor_id & 0xff0f) {
	case 0x0801:
		FUNC0(D_PROBE, "sensor tas5130a");
		sd->sensor = SENSOR_TAS5130A;
		break;
	case 0x0802:
		FUNC0(D_PROBE, "sensor lt168g");
		sd->sensor = SENSOR_LT168G;
		break;
	case 0x0803:
		FUNC0(D_PROBE, "sensor 'other'");
		sd->sensor = SENSOR_OTHER;
		break;
	case 0x0807:
		FUNC0(D_PROBE, "sensor om6802");
		sd->sensor = SENSOR_OM6802;
		break;
	default:
		FUNC1("unknown sensor %04x", sensor_id);
		return -EINVAL;
	}

	if (sd->sensor == SENSOR_OM6802) {
		FUNC6(gspca_dev, n1, sizeof n1);
		i = 5;
		while (--i >= 0) {
			FUNC6(gspca_dev, sensor_reset, sizeof sensor_reset);
			test_byte = FUNC4(gspca_dev, 0x0063);
			FUNC3(100);
			if (test_byte == 0x17)
				break;		/* OK */
		}
		if (i < 0) {
			FUNC1("Bad sensor reset %02x", test_byte);
			return -EIO;
		}
		FUNC6(gspca_dev, n2, sizeof n2);
	}

	i = 0;
	while (read_indexs[i] != 0x00) {
		test_byte = FUNC4(gspca_dev, read_indexs[i]);
		FUNC0(D_STREAM, "Reg 0x%02x = 0x%02x", read_indexs[i],
		       test_byte);
		i++;
	}

	sensor = &sensor_data[sd->sensor];
	FUNC6(gspca_dev, sensor->n3, sizeof sensor->n3);
	FUNC6(gspca_dev, sensor->n4, sensor->n4sz);

	if (sd->sensor == SENSOR_LT168G) {
		test_byte = FUNC4(gspca_dev, 0x80);
		FUNC0(D_STREAM, "Reg 0x%02x = 0x%02x", 0x80,
		       test_byte);
		FUNC5(gspca_dev, 0x6c80);
	}

	FUNC7(gspca_dev, 0xd0, sensor->data1, sizeof sensor->data1);
	FUNC7(gspca_dev, 0xc7, sensor->data2, sizeof sensor->data2);
	FUNC7(gspca_dev, 0xe0, sensor->data3, sizeof sensor->data3);

	FUNC5(gspca_dev, (sensor->reg80 << 8) + 0x80);
	FUNC5(gspca_dev, (sensor->reg80 << 8) + 0x80);
	FUNC5(gspca_dev, (sensor->reg8e << 8) + 0x8e);

	FUNC8(gspca_dev);
	FUNC10(gspca_dev);
	FUNC12(gspca_dev);
	FUNC9(gspca_dev);
	FUNC13(gspca_dev);
	FUNC2(gspca_dev);
	FUNC11(gspca_dev);

	FUNC6(gspca_dev, sensor->data5, sizeof sensor->data5);
	FUNC6(gspca_dev, sensor->nset8, sizeof sensor->nset8);
	FUNC6(gspca_dev, sensor->stream, sizeof sensor->stream);

	if (sd->sensor == SENSOR_LT168G) {
		test_byte = FUNC4(gspca_dev, 0x80);
		FUNC0(D_STREAM, "Reg 0x%02x = 0x%02x", 0x80,
		       test_byte);
		FUNC5(gspca_dev, 0x6c80);
	}

	FUNC7(gspca_dev, 0xd0, sensor->data1, sizeof sensor->data1);
	FUNC7(gspca_dev, 0xc7, sensor->data2, sizeof sensor->data2);
	FUNC7(gspca_dev, 0xe0, sensor->data3, sizeof sensor->data3);

	return 0;
}