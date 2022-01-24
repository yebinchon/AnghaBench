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
struct bt856 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bt856*) ; 
 int /*<<< orphan*/  FUNC1 (struct bt856*,int,int,int) ; 
 scalar_t__ debug ; 
 struct bt856* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			   u32 input, u32 output, u32 config)
{
	struct bt856 *encoder = FUNC2(sd);

	FUNC3(1, debug, sd, "set input %d\n", input);

	/* We only have video bus.
	 * input= 0: input is from bt819
	 * input= 1: input is from ZR36060 */
	switch (input) {
	case 0:
		FUNC1(encoder, 0xde, 4, 0);
		FUNC1(encoder, 0xde, 3, 1);
		FUNC1(encoder, 0xdc, 3, 1);
		FUNC1(encoder, 0xdc, 6, 0);
		break;
	case 1:
		FUNC1(encoder, 0xde, 4, 0);
		FUNC1(encoder, 0xde, 3, 1);
		FUNC1(encoder, 0xdc, 3, 1);
		FUNC1(encoder, 0xdc, 6, 1);
		break;
	case 2:	/* Color bar */
		FUNC1(encoder, 0xdc, 3, 0);
		FUNC1(encoder, 0xde, 4, 1);
		break;
	default:
		return -EINVAL;
	}

	if (debug != 0)
		FUNC0(encoder);
	return 0;
}