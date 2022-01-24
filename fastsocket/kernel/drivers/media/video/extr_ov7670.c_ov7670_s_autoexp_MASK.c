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
typedef  enum v4l2_exposure_auto_type { ____Placeholder_v4l2_exposure_auto_type } v4l2_exposure_auto_type ;

/* Variables and functions */
 unsigned char COM8_AEC ; 
 int /*<<< orphan*/  REG_COM8 ; 
 int V4L2_EXPOSURE_AUTO ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
		enum v4l2_exposure_auto_type value)
{
	int ret;
	unsigned char com8;

	ret = FUNC0(sd, REG_COM8, &com8);
	if (ret == 0) {
		if (value == V4L2_EXPOSURE_AUTO)
			com8 |= COM8_AEC;
		else
			com8 &= ~COM8_AEC;
		ret = FUNC1(sd, REG_COM8, com8);
	}
	return ret;
}