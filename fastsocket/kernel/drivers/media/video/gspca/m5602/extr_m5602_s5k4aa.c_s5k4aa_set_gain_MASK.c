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
struct sd {int* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef  int s32 ;
typedef  int __s32 ;

/* Variables and functions */
 int /*<<< orphan*/  D_V4L2 ; 
 size_t GAIN_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  S5K4AA_GAIN ; 
 int /*<<< orphan*/  S5K4AA_PAGE_MAP ; 
 int S5K4AA_PAGE_MAP_2 ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev, __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;
	u8 data = S5K4AA_PAGE_MAP_2;
	int err;

	sensor_settings[GAIN_IDX] = val;

	FUNC0(D_V4L2, "Set gain to %d", val);
	err = FUNC1(sd, S5K4AA_PAGE_MAP, &data, 1);
	if (err < 0)
		return err;

	data = val & 0xff;
	err = FUNC1(sd, S5K4AA_GAIN, &data, 1);

	return err;
}