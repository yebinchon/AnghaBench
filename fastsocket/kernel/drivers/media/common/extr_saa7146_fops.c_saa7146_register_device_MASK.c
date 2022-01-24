#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device_shadow {int /*<<< orphan*/ * lock; } ;
struct video_device {int /*<<< orphan*/  name; int /*<<< orphan*/  tvnorms; int /*<<< orphan*/  (* release ) (struct video_device*) ;int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct saa7146_dev {int /*<<< orphan*/  name; TYPE_2__* ext_vv_data; int /*<<< orphan*/  v4l2_lock; } ;
struct TYPE_4__ {int num_stds; TYPE_1__* stds; int /*<<< orphan*/  ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct video_device* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct video_device*) ; 
 struct video_device_shadow* FUNC7 (struct video_device*) ; 
 int /*<<< orphan*/  video_fops ; 
 int FUNC8 (struct video_device*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*,struct saa7146_dev*) ; 

int FUNC10(struct video_device **vid, struct saa7146_dev* dev,
			    char *name, int type)
{
	struct video_device *vfd;
	struct video_device_shadow *shvfd;
	int err;
	int i;

	FUNC0(("dev:%p, name:'%s', type:%d\n",dev,name,type));

	// released by vfd->release
	vfd = FUNC4();
	if (vfd == NULL)
		return -ENOMEM;

	shvfd = FUNC7(vfd);
	if (shvfd == NULL)
		return -ENOMEM;

	vfd->fops = &video_fops;
	vfd->ioctl_ops = &dev->ext_vv_data->ops;
	vfd->release = video_device_release;
	shvfd->lock = &dev->v4l2_lock;
	vfd->tvnorms = 0;
	for (i = 0; i < dev->ext_vv_data->num_stds; i++)
		vfd->tvnorms |= dev->ext_vv_data->stds[i].id;
	FUNC3(vfd->name, name, sizeof(vfd->name));
	FUNC9(vfd, dev);

	err = FUNC8(vfd, type, -1);
	if (err < 0) {
		FUNC1(("cannot register v4l2 device. skipping.\n"));
		FUNC6(vfd);
		return err;
	}

	FUNC2(("%s: registered device %s [v4l2]\n",
		dev->name, FUNC5(vfd)));

	*vid = vfd;
	return 0;
}