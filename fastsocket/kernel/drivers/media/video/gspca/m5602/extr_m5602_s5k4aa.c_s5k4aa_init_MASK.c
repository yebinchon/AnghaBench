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
struct sd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
#define  BRIDGE 130 
 int EINVAL ; 
#define  SENSOR 129 
#define  SENSOR_LONG 128 
 scalar_t__ dump_sensor ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int** init_s5k4aa ; 
 int FUNC2 (struct sd*,int,int) ; 
 int FUNC3 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*) ; 

int FUNC5(struct sd *sd)
{
	int i, err = 0;

	for (i = 0; i < FUNC0(init_s5k4aa) && !err; i++) {
		u8 data[2] = {0x00, 0x00};

		switch (init_s5k4aa[i][0]) {
		case BRIDGE:
			err = FUNC2(sd,
				init_s5k4aa[i][1],
				init_s5k4aa[i][2]);
			break;

		case SENSOR:
			data[0] = init_s5k4aa[i][2];
			err = FUNC3(sd,
				init_s5k4aa[i][1], data, 1);
			break;

		case SENSOR_LONG:
			data[0] = init_s5k4aa[i][2];
			data[1] = init_s5k4aa[i][3];
			err = FUNC3(sd,
				init_s5k4aa[i][1], data, 2);
			break;
		default:
			FUNC1("Invalid stream command, exiting init");
			return -EINVAL;
		}
	}

	if (dump_sensor)
		FUNC4(sd);

	return err;
}