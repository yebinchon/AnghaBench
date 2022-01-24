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
struct sd {int* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef  int s32 ;
typedef  int __s32 ;

/* Variables and functions */
 size_t AUTOGAIN_IDX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  D_V4L2 ; 
 size_t NATURAL_IDX ; 
 int /*<<< orphan*/  PB_EXPGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, __s32 val)
{
	int err;
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;

	sensor_settings[AUTOGAIN_IDX] = val;
	if (sensor_settings[AUTOGAIN_IDX]) {
		if (sensor_settings[NATURAL_IDX])
			val = FUNC0(6)|FUNC0(4)|FUNC0(0);
		else
			val = FUNC0(4)|FUNC0(0);
	} else
		val = 0;

	err = FUNC2(sd, PB_EXPGAIN, val);
	FUNC1(D_V4L2, "Set autogain to %d (natural: %d), status: %d",
	       sensor_settings[AUTOGAIN_IDX], sensor_settings[NATURAL_IDX],
	       err);

	return err;
}