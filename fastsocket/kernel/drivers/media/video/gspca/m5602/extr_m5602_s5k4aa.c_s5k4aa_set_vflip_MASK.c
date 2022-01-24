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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  S5K4AA_PAGE_MAP ; 
 int S5K4AA_PAGE_MAP_2 ; 
 int /*<<< orphan*/  S5K4AA_READ_MODE ; 
 int S5K4AA_RM_V_FLIP ; 
 int /*<<< orphan*/  S5K4AA_ROWSTART_LO ; 
 size_t VFLIP_IDX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  s5k4aa_vflip_dmi_table ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev, __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;
	u8 data = S5K4AA_PAGE_MAP_2;
	int err;

	sensor_settings[VFLIP_IDX] = val;

	FUNC0(D_V4L2, "Set vertical flip to %d", val);
	err = FUNC3(sd, S5K4AA_PAGE_MAP, &data, 1);
	if (err < 0)
		return err;

	err = FUNC2(sd, S5K4AA_READ_MODE, &data, 1);
	if (err < 0)
		return err;

	if (FUNC1(s5k4aa_vflip_dmi_table))
		val = !val;

	data = ((data & ~S5K4AA_RM_V_FLIP) | ((val & 0x01) << 7));
	err = FUNC3(sd, S5K4AA_READ_MODE, &data, 1);
	if (err < 0)
		return err;

	err = FUNC2(sd, S5K4AA_ROWSTART_LO, &data, 1);
	if (err < 0)
		return err;
	if (val)
		data &= 0xfe;
	else
		data |= 0x01;
	err = FUNC3(sd, S5K4AA_ROWSTART_LO, &data, 1);
	return err;
}