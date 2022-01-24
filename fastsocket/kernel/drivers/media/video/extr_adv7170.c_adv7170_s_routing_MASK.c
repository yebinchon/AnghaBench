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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7170 {int input; } ;

/* Variables and functions */
 int EINVAL ; 
 int TR0MODE ; 
 int TR0RST ; 
 int TR1CAPT ; 
 int TR1PLAY ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  debug ; 
 int* inputs ; 
 struct adv7170* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			     u32 input, u32 output, u32 config)
{
	struct adv7170 *encoder = FUNC1(sd);

	/* RJ: input = 0: input is from decoder
	   input = 1: input is from ZR36060
	   input = 2: color bar */

	FUNC2(1, debug, sd, "set input from %s\n",
			input == 0 ? "decoder" : "ZR36060");

	switch (input) {
	case 0:
		FUNC0(sd, 0x01, 0x20);
		FUNC0(sd, 0x08, TR1CAPT);	/* TR1 */
		FUNC0(sd, 0x02, 0x0e);	/* Enable genlock */
		FUNC0(sd, 0x07, TR0MODE | TR0RST);
		FUNC0(sd, 0x07, TR0MODE);
		/* udelay(10); */
		break;

	case 1:
		FUNC0(sd, 0x01, 0x00);
		FUNC0(sd, 0x08, TR1PLAY);	/* TR1 */
		FUNC0(sd, 0x02, 0x08);
		FUNC0(sd, 0x07, TR0MODE | TR0RST);
		FUNC0(sd, 0x07, TR0MODE);
		/* udelay(10); */
		break;

	default:
		FUNC2(1, debug, sd, "illegal input: %d\n", input);
		return -EINVAL;
	}
	FUNC2(1, debug, sd, "switched to %s\n", inputs[input]);
	encoder->input = input;
	return 0;
}