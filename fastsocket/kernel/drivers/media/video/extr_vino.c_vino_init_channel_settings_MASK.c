#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  frame_wait_queue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue_mutex; } ;
struct vino_channel_settings {unsigned int channel; int decimation; TYPE_3__* vdev; TYPE_1__ fb_queue; int /*<<< orphan*/  capture_lock; int /*<<< orphan*/  mutex; scalar_t__ capturing; int /*<<< orphan*/  data_norm; int /*<<< orphan*/  data_format; scalar_t__ users; scalar_t__ alpha; int /*<<< orphan*/  input; } ;
struct video_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/  release; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VINO_DATA_FMT_GREY ; 
 int /*<<< orphan*/  VINO_DATA_NORM_NTSC ; 
 int /*<<< orphan*/  VINO_INPUT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  vdev_template ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  video_device_release ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct vino_channel_settings*) ; 
 TYPE_2__* vino_drvdata ; 
 int /*<<< orphan*/  vino_init_stage ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vino_channel_settings*) ; 
 int /*<<< orphan*/  FUNC9 (struct vino_channel_settings*) ; 

__attribute__((used)) static int FUNC10(struct vino_channel_settings *vcs,
				 unsigned int channel, const char *name)
{
	vcs->channel = channel;
	vcs->input = VINO_INPUT_NONE;
	vcs->alpha = 0;
	vcs->users = 0;
	vcs->data_format = VINO_DATA_FMT_GREY;
	vcs->data_norm = VINO_DATA_NORM_NTSC;
	vcs->decimation = 1;
	FUNC8(vcs);
	FUNC9(vcs);

	vcs->capturing = 0;

	FUNC2(&vcs->mutex);
	FUNC3(&vcs->capture_lock);

	FUNC2(&vcs->fb_queue.queue_mutex);
	FUNC3(&vcs->fb_queue.queue_lock);
	FUNC0(&vcs->fb_queue.frame_wait_queue);

	vcs->vdev = FUNC5();
	if (!vcs->vdev) {
		FUNC7(vino_init_stage);
		return -ENOMEM;
	}
	vino_init_stage++;

	FUNC1(vcs->vdev, &vdev_template,
	       sizeof(struct video_device));
	FUNC4(vcs->vdev->name, name);
	vcs->vdev->release = video_device_release;
	vcs->vdev->v4l2_dev = &vino_drvdata->v4l2_dev;

	FUNC6(vcs->vdev, vcs);

	return 0;
}