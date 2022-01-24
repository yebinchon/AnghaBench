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
struct sd {int /*<<< orphan*/  gspca_dev; scalar_t__ sensor_priv; } ;
struct s5k83a_priv {int /*<<< orphan*/ * settings; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int**) ; 
#define  BRIDGE 130 
 size_t BRIGHTNESS_IDX ; 
 int EINVAL ; 
 size_t EXPOSURE_IDX ; 
 size_t GAIN_IDX ; 
 size_t HFLIP_IDX ; 
#define  SENSOR 129 
#define  SENSOR_LONG 128 
 size_t VFLIP_IDX ; 
 scalar_t__ dump_sensor ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int** init_s5k83a ; 
 int FUNC2 (struct sd*,int,int) ; 
 int FUNC3 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct sd *sd)
{
	int i, err = 0;
	s32 *sensor_settings =
			((struct s5k83a_priv *) sd->sensor_priv)->settings;

	for (i = 0; i < FUNC0(init_s5k83a) && !err; i++) {
		u8 data[2] = {0x00, 0x00};

		switch (init_s5k83a[i][0]) {
		case BRIDGE:
			err = FUNC2(sd,
					init_s5k83a[i][1],
					init_s5k83a[i][2]);
			break;

		case SENSOR:
			data[0] = init_s5k83a[i][2];
			err = FUNC3(sd,
				init_s5k83a[i][1], data, 1);
			break;

		case SENSOR_LONG:
			data[0] = init_s5k83a[i][2];
			data[1] = init_s5k83a[i][3];
			err = FUNC3(sd,
				init_s5k83a[i][1], data, 2);
			break;
		default:
			FUNC1("Invalid stream command, exiting init");
			return -EINVAL;
		}
	}

	if (dump_sensor)
		FUNC4(sd);

	err = FUNC7(&sd->gspca_dev, sensor_settings[GAIN_IDX]);
	if (err < 0)
		return err;

	err = FUNC5(&sd->gspca_dev,
				     sensor_settings[BRIGHTNESS_IDX]);
	if (err < 0)
		return err;

	err = FUNC6(&sd->gspca_dev,
				   sensor_settings[EXPOSURE_IDX]);
	if (err < 0)
		return err;

	err = FUNC8(&sd->gspca_dev, sensor_settings[HFLIP_IDX]);
	if (err < 0)
		return err;

	err = FUNC9(&sd->gspca_dev, sensor_settings[VFLIP_IDX]);

	return err;
}