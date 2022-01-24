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
struct sd {int /*<<< orphan*/  gspca_dev; int /*<<< orphan*/ * sensor_priv; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 size_t AUTO_EXPOSURE_IDX ; 
 size_t AUTO_WHITE_BALANCE_IDX ; 
 size_t BLUE_BALANCE_IDX ; 
#define  BRIDGE 129 
 int EINVAL ; 
 size_t EXPOSURE_IDX ; 
 size_t GAIN_IDX ; 
 size_t GREEN_BALANCE_IDX ; 
 size_t HFLIP_IDX ; 
 size_t RED_BALANCE_IDX ; 
#define  SENSOR 128 
 size_t VFLIP_IDX ; 
 scalar_t__ dump_sensor ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int** init_po1030 ; 
 int FUNC2 (struct sd*,int,int) ; 
 int FUNC3 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(struct sd *sd)
{
	s32 *sensor_settings = sd->sensor_priv;
	int i, err = 0;

	/* Init the sensor */
	for (i = 0; i < FUNC0(init_po1030) && !err; i++) {
		u8 data[2] = {0x00, 0x00};

		switch (init_po1030[i][0]) {
		case BRIDGE:
			err = FUNC2(sd,
				init_po1030[i][1],
				init_po1030[i][2]);
			break;

		case SENSOR:
			data[0] = init_po1030[i][2];
			err = FUNC3(sd,
				init_po1030[i][1], data, 1);
			break;

		default:
			FUNC1("Invalid stream command, exiting init");
			return -EINVAL;
		}
	}
	if (err < 0)
		return err;

	if (dump_sensor)
		FUNC4(sd);

	err = FUNC8(&sd->gspca_dev,
				   sensor_settings[EXPOSURE_IDX]);
	if (err < 0)
		return err;

	err = FUNC9(&sd->gspca_dev, sensor_settings[GAIN_IDX]);
	if (err < 0)
		return err;

	err = FUNC11(&sd->gspca_dev, sensor_settings[HFLIP_IDX]);
	if (err < 0)
		return err;

	err = FUNC13(&sd->gspca_dev, sensor_settings[VFLIP_IDX]);
	if (err < 0)
		return err;

	err = FUNC12(&sd->gspca_dev,
				      sensor_settings[RED_BALANCE_IDX]);
	if (err < 0)
		return err;

	err = FUNC7(&sd->gspca_dev,
				      sensor_settings[BLUE_BALANCE_IDX]);
	if (err < 0)
		return err;

	err = FUNC10(&sd->gspca_dev,
				       sensor_settings[GREEN_BALANCE_IDX]);
	if (err < 0)
		return err;

	err = FUNC6(&sd->gspca_dev,
				sensor_settings[AUTO_WHITE_BALANCE_IDX]);
	if (err < 0)
		return err;

	err = FUNC5(&sd->gspca_dev,
				sensor_settings[AUTO_EXPOSURE_IDX]);
	return err;
}