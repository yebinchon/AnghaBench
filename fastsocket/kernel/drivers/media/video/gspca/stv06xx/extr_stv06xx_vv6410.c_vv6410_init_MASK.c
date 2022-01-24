#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sd {int /*<<< orphan*/  gspca_dev; int /*<<< orphan*/ * sensor_priv; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {int* data; int len; scalar_t__ start; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 size_t EXPOSURE_IDX ; 
 size_t GAIN_IDX ; 
 int FUNC1 (struct sd*,scalar_t__,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* stv_bridge_init ; 
 TYPE_1__* vv6410_sensor_init ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sd *sd)
{
	int err = 0, i;
	s32 *sensor_settings = sd->sensor_priv;

	for (i = 0; i < FUNC0(stv_bridge_init); i++) {
		/* if NULL then len contains single value */
		if (stv_bridge_init[i].data == NULL) {
			err = FUNC1(sd,
				stv_bridge_init[i].start,
				stv_bridge_init[i].len);
		} else {
			int j;
			for (j = 0; j < stv_bridge_init[i].len; j++)
				err = FUNC1(sd,
					stv_bridge_init[i].start + j,
					stv_bridge_init[i].data[j]);
		}
	}

	if (err < 0)
		return err;

	err = FUNC2(sd, (u8 *) vv6410_sensor_init,
					 FUNC0(vv6410_sensor_init));
	if (err < 0)
		return err;

	err = FUNC4(&sd->gspca_dev,
				   sensor_settings[EXPOSURE_IDX]);
	if (err < 0)
		return err;

	err = FUNC3(&sd->gspca_dev,
				      sensor_settings[GAIN_IDX]);

	return (err < 0) ? err : 0;
}