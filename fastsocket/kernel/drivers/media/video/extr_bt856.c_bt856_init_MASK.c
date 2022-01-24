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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct bt856 {int norm; } ;

/* Variables and functions */
 int V4L2_STD_NTSC ; 
 int /*<<< orphan*/  FUNC0 (struct bt856*) ; 
 int /*<<< orphan*/  FUNC1 (struct bt856*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bt856*,int,int) ; 
 scalar_t__ debug ; 
 struct bt856* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, u32 arg)
{
	struct bt856 *encoder = FUNC3(sd);

	/* This is just for testing!!! */
	FUNC4(1, debug, sd, "init\n");
	FUNC2(encoder, 0xdc, 0x18);
	FUNC2(encoder, 0xda, 0);
	FUNC2(encoder, 0xde, 0);

	FUNC1(encoder, 0xdc, 3, 1);
	/*bt856_setbit(encoder, 0xdc, 6, 0);*/
	FUNC1(encoder, 0xdc, 4, 1);

	if (encoder->norm & V4L2_STD_NTSC)
		FUNC1(encoder, 0xdc, 2, 0);
	else
		FUNC1(encoder, 0xdc, 2, 1);

	FUNC1(encoder, 0xdc, 1, 1);
	FUNC1(encoder, 0xde, 4, 0);
	FUNC1(encoder, 0xde, 3, 1);
	if (debug != 0)
		FUNC0(encoder);
	return 0;
}