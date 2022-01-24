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
struct ov7670_info {int hue; } ;

/* Variables and functions */
 int CMATRIX_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ov7670_info*,int*) ; 
 int FUNC1 (struct v4l2_subdev*,int*) ; 
 struct ov7670_info* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int value)
{
	struct ov7670_info *info = FUNC2(sd);
	int matrix[CMATRIX_LEN];
	int ret;

	if (value < -180 || value > 180)
		return -EINVAL;
	info->hue = value;
	FUNC0(info, matrix);
	ret = FUNC1(sd, matrix);
	return ret;
}