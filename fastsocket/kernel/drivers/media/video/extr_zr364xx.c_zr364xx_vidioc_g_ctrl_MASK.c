#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct zr364xx_camera {TYPE_1__ mode; } ;
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  V4L2_CID_BRIGHTNESS 128 
 struct zr364xx_camera* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				 struct v4l2_control *c)
{
	struct zr364xx_camera *cam;

	if (file == NULL)
		return -ENODEV;
	cam = FUNC0(file);

	switch (c->id) {
	case V4L2_CID_BRIGHTNESS:
		c->value = cam->mode.brightness;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}