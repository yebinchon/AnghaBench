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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			    u32 input, u32 output, u32 config)
{
	if ((input & 0xf) > 6) {
		FUNC1(sd, "Invalid input %d.\n", input);
		return -EINVAL;
	}
	FUNC0(sd, 0x09, input & 0xf);
	FUNC0(sd, 0x05, input & 0xf0);
	return 0;
}