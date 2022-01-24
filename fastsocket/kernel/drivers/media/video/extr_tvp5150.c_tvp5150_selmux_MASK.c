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
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int output; int input; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int TVP5150_BLACK_SCREEN ; 
#define  TVP5150_COMPOSITE0 130 
#define  TVP5150_COMPOSITE1 129 
 int /*<<< orphan*/  TVP5150_MISC_CTL ; 
 int /*<<< orphan*/  TVP5150_OP_MODE_CTL ; 
#define  TVP5150_SVIDEO 128 
 int /*<<< orphan*/  TVP5150_VD_IN_SRC_SEL_1 ; 
 int /*<<< orphan*/  debug ; 
 struct tvp5150* FUNC0 (struct v4l2_subdev*) ; 
 unsigned char FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int,int,int) ; 

__attribute__((used)) static inline void FUNC4(struct v4l2_subdev *sd)
{
	int opmode = 0;
	struct tvp5150 *decoder = FUNC0(sd);
	int input = 0;
	unsigned char val;

	if ((decoder->output & TVP5150_BLACK_SCREEN) || !decoder->enable)
		input = 8;

	switch (decoder->input) {
	case TVP5150_COMPOSITE1:
		input |= 2;
		/* fall through */
	case TVP5150_COMPOSITE0:
		break;
	case TVP5150_SVIDEO:
	default:
		input |= 1;
		break;
	}

	FUNC3(1, debug, sd, "Selecting video route: route input=%i, output=%i "
			"=> tvp5150 input=%i, opmode=%i\n",
			decoder->input, decoder->output,
			input, opmode);

	FUNC2(sd, TVP5150_OP_MODE_CTL, opmode);
	FUNC2(sd, TVP5150_VD_IN_SRC_SEL_1, input);

	/* Svideo should enable YCrCb output and disable GPCL output
	 * For Composite and TV, it should be the reverse
	 */
	val = FUNC1(sd, TVP5150_MISC_CTL);
	if (decoder->input == TVP5150_SVIDEO)
		val = (val & ~0x40) | 0x10;
	else
		val = (val & ~0x10) | 0x40;
	FUNC2(sd, TVP5150_MISC_CTL, val);
}