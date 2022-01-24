#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
typedef  enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;
struct TYPE_3__ {int code; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* ov772x_cfmts ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd, unsigned int index,
			   enum v4l2_mbus_pixelcode *code)
{
	if (index >= FUNC0(ov772x_cfmts))
		return -EINVAL;

	*code = ov772x_cfmts[index].code;
	return 0;
}