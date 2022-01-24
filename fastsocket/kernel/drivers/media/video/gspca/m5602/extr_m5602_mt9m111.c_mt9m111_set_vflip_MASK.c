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
 int /*<<< orphan*/  MT9M111_PAGE_MAP ; 
 int /*<<< orphan*/  MT9M111_SC_R_MODE_CONTEXT_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 size_t VFLIP_IDX ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, __s32 val)
{
	int err;
	u8 data[2] = {0x00, 0x00};
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;

	FUNC0(D_V4L2, "Set vertical flip to %d", val);

	sensor_settings[VFLIP_IDX] = val;

	/* The mt9m111 is flipped by default */
	val = !val;

	/* Set the correct page map */
	err = FUNC2(sd, MT9M111_PAGE_MAP, data, 2);
	if (err < 0)
		return err;

	err = FUNC1(sd, MT9M111_SC_R_MODE_CONTEXT_B, data, 2);
	if (err < 0)
		return err;

	data[1] = (data[1] & 0xfe) | val;
	err = FUNC2(sd, MT9M111_SC_R_MODE_CONTEXT_B,
				   data, 2);
	return err;
}