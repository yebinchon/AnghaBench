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
typedef  int v4l2_std_id ;
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv7343_std_info {int stdid; int standard_val3; int /*<<< orphan*/  fsc_val; } ;
struct adv7343_state {int output; int reg80; int reg01; } ;

/* Variables and functions */
 int ADV7343_FSC_REG0 ; 
 int ADV7343_MODE_SELECT_REG ; 
 int ADV7343_SD_MODE_REG1 ; 
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ INPUT_MODE_MASK ; 
 int SD_INPUT_MODE ; 
 int SD_STD_MASK ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_443 ; 
 int V4L2_STD_SECAM ; 
 int FUNC1 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ stdinfo ; 
 struct adv7343_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct adv7343_state *state = FUNC2(sd);
	struct adv7343_std_info *std_info;
	int output_idx, num_std;
	char *fsc_ptr;
	u8 reg, val;
	int err = 0;
	int i = 0;

	output_idx = state->output;

	std_info = (struct adv7343_std_info *)stdinfo;
	num_std = FUNC0(stdinfo);

	for (i = 0; i < num_std; i++) {
		if (std_info[i].stdid & std)
			break;
	}

	if (i == num_std) {
		FUNC3(1, debug, sd,
				"Invalid std or std is not supported: %llx\n",
						(unsigned long long)std);
		return -EINVAL;
	}

	/* Set the standard */
	val = state->reg80 & (~(SD_STD_MASK));
	val |= std_info[i].standard_val3;
	err = FUNC1(sd, ADV7343_SD_MODE_REG1, val);
	if (err < 0)
		goto setstd_exit;

	state->reg80 = val;

	/* Configure the input mode register */
	val = state->reg01 & (~((u8) INPUT_MODE_MASK));
	val |= SD_INPUT_MODE;
	err = FUNC1(sd, ADV7343_MODE_SELECT_REG, val);
	if (err < 0)
		goto setstd_exit;

	state->reg01 = val;

	/* Program the sub carrier frequency registers */
	fsc_ptr = (unsigned char *)&std_info[i].fsc_val;
	reg = ADV7343_FSC_REG0;
	for (i = 0; i < 4; i++, reg++, fsc_ptr++) {
		err = FUNC1(sd, reg, *fsc_ptr);
		if (err < 0)
			goto setstd_exit;
	}

	val = state->reg80;

	/* Filter settings */
	if (std & (V4L2_STD_NTSC | V4L2_STD_NTSC_443))
		val &= 0x03;
	else if (std & ~V4L2_STD_SECAM)
		val |= 0x04;

	err = FUNC1(sd, ADV7343_SD_MODE_REG1, val);
	if (err < 0)
		goto setstd_exit;

	state->reg80 = val;

setstd_exit:
	if (err != 0)
		FUNC4(sd, "Error setting std, write failed\n");

	return err;
}