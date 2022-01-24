#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* slave; } ;
struct v4l2_int_device {TYPE_3__ u; } ;
struct omap24xxcam_device {int /*<<< orphan*/ * sdev; int /*<<< orphan*/  dev; TYPE_4__* vfd; } ;
struct TYPE_9__ {int minor; } ;
struct TYPE_7__ {TYPE_1__* master; } ;
struct TYPE_6__ {struct omap24xxcam_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_streaming ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(struct v4l2_int_device *s)
{
	struct omap24xxcam_device *cam = s->u.slave->master->priv;

	FUNC1(cam);

	if (cam->vfd) {
		if (cam->vfd->minor == -1) {
			/*
			 * The device was never registered, so release the
			 * video_device struct directly.
			 */
			FUNC2(cam->vfd);
		} else {
			/*
			 * The unregister function will release the
			 * video_device struct as well as
			 * unregistering it.
			 */
			FUNC3(cam->vfd);
		}
		cam->vfd = NULL;
	}

	FUNC0(cam->dev, &dev_attr_streaming);

	cam->sdev = NULL;
}