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
struct ov7670_info {int /*<<< orphan*/  hue; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 struct ov7670_info* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd, __s32 *value)
{
	struct ov7670_info *info = FUNC0(sd);

	*value = info->hue;
	return 0;
}