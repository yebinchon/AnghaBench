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
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7343_state {int reg00; unsigned char reg02; unsigned char reg82; unsigned char reg35; } ;

/* Variables and functions */
 scalar_t__ ADV7343_COMPONENT_ID ; 
 unsigned char ADV7343_COMPONENT_POWER_VALUE ; 
 scalar_t__ ADV7343_COMPOSITE_ID ; 
 unsigned char ADV7343_COMPOSITE_POWER_VALUE ; 
 int /*<<< orphan*/  ADV7343_HD_MODE_REG6 ; 
 int /*<<< orphan*/  ADV7343_MODE_REG0 ; 
 int /*<<< orphan*/  ADV7343_POWER_MODE_REG ; 
 int /*<<< orphan*/  ADV7343_SD_MODE_REG2 ; 
 scalar_t__ ADV7343_SVIDEO_ID ; 
 unsigned char ADV7343_SVIDEO_POWER_VALUE ; 
 int EINVAL ; 
 unsigned char HD_DAC_SWAP_DI ; 
 unsigned char HD_RGB_INPUT_DI ; 
 unsigned char SD_DAC_1_DI ; 
 unsigned char SD_DAC_2_DI ; 
 unsigned char YUV_OUTPUT_SELECT ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  debug ; 
 struct adv7343_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, u32 output_type)
{
	struct adv7343_state *state = FUNC1(sd);
	unsigned char val;
	int err = 0;

	if (output_type > ADV7343_SVIDEO_ID) {
		FUNC2(1, debug, sd,
			"Invalid output type or output type not supported:%d\n",
								output_type);
		return -EINVAL;
	}

	/* Enable Appropriate DAC */
	val = state->reg00 & 0x03;

	if (output_type == ADV7343_COMPOSITE_ID)
		val |= ADV7343_COMPOSITE_POWER_VALUE;
	else if (output_type == ADV7343_COMPONENT_ID)
		val |= ADV7343_COMPONENT_POWER_VALUE;
	else
		val |= ADV7343_SVIDEO_POWER_VALUE;

	err = FUNC0(sd, ADV7343_POWER_MODE_REG, val);
	if (err < 0)
		goto setoutput_exit;

	state->reg00 = val;

	/* Enable YUV output */
	val = state->reg02 | YUV_OUTPUT_SELECT;
	err = FUNC0(sd, ADV7343_MODE_REG0, val);
	if (err < 0)
		goto setoutput_exit;

	state->reg02 = val;

	/* configure SD DAC Output 2 and SD DAC Output 1 bit to zero */
	val = state->reg82 & (SD_DAC_1_DI & SD_DAC_2_DI);
	err = FUNC0(sd, ADV7343_SD_MODE_REG2, val);
	if (err < 0)
		goto setoutput_exit;

	state->reg82 = val;

	/* configure ED/HD Color DAC Swap and ED/HD RGB Input Enable bit to
	 * zero */
	val = state->reg35 & (HD_RGB_INPUT_DI & HD_DAC_SWAP_DI);
	err = FUNC0(sd, ADV7343_HD_MODE_REG6, val);
	if (err < 0)
		goto setoutput_exit;

	state->reg35 = val;

setoutput_exit:
	if (err != 0)
		FUNC3(sd, "Error setting output, write failed\n");

	return err;
}