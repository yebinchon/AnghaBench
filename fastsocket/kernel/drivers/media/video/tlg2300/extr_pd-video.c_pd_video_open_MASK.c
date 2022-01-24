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
struct videobuf_buffer {int dummy; } ;
struct video_device {scalar_t__ vfl_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  users; struct front_face* front; } ;
struct TYPE_3__ {int /*<<< orphan*/  users; int /*<<< orphan*/  context; } ;
struct poseidon {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  interface; int /*<<< orphan*/  kref; TYPE_2__ vbi_data; TYPE_1__ video_data; int /*<<< orphan*/  cur_transfer_mode; } ;
struct front_face {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  active; int /*<<< orphan*/ * curr_frame; struct poseidon* pd; int /*<<< orphan*/  q; void* type; } ;
struct file {struct front_face* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int POSEIDON_STATE_ANALOG ; 
 int POSEIDON_STATE_VBI ; 
 void* V4L2_BUF_TYPE_VBI_CAPTURE ; 
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ VFL_TYPE_GRABBER ; 
 scalar_t__ VFL_TYPE_VBI ; 
 int /*<<< orphan*/  debug_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct front_face*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct front_face* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct poseidon*) ; 
 int /*<<< orphan*/  pd_video_qops ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_transfer_mode ; 
 struct video_device* FUNC13 (struct file*) ; 
 struct poseidon* FUNC14 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,struct front_face*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct file *file)
{
	struct video_device *vfd = FUNC13(file);
	struct poseidon *pd = FUNC14(vfd);
	struct front_face *front = NULL;
	int ret = -ENOMEM;

	FUNC6(&pd->lock);
	FUNC11(pd->interface);

	if (vfd->vfl_type == VFL_TYPE_GRABBER
		&& !(pd->state & POSEIDON_STATE_ANALOG)) {
		front = FUNC4(sizeof(struct front_face), GFP_KERNEL);
		if (!front)
			goto out;

		pd->cur_transfer_mode	= usb_transfer_mode;/* bulk or iso */
		FUNC1(&pd->video_data.context);

		ret = FUNC8(pd);
		if (ret < 0) {
			FUNC2(front);
			ret = -1;
			goto out;
		}

		pd->state		|= POSEIDON_STATE_ANALOG;
		front->type		= V4L2_BUF_TYPE_VIDEO_CAPTURE;
		pd->video_data.users++;
		FUNC9(vfd, debug_mode);

		FUNC15(&front->q, &pd_video_qops,
				NULL, &front->queue_lock,
				V4L2_BUF_TYPE_VIDEO_CAPTURE,
				V4L2_FIELD_INTERLACED,/* video is interlacd */
				sizeof(struct videobuf_buffer),/*it's enough*/
				front, NULL);
	} else if (vfd->vfl_type == VFL_TYPE_VBI
		&& !(pd->state & POSEIDON_STATE_VBI)) {
		front = FUNC4(sizeof(struct front_face), GFP_KERNEL);
		if (!front)
			goto out;

		pd->state	|= POSEIDON_STATE_VBI;
		front->type	= V4L2_BUF_TYPE_VBI_CAPTURE;
		pd->vbi_data.front = front;
		pd->vbi_data.users++;

		FUNC15(&front->q, &pd_video_qops,
				NULL, &front->queue_lock,
				V4L2_BUF_TYPE_VBI_CAPTURE,
				V4L2_FIELD_NONE, /* vbi is NONE mode */
				sizeof(struct videobuf_buffer),
				front, NULL);
	} else {
		/* maybe add FM support here */
		FUNC5("other ");
		ret = -EINVAL;
		goto out;
	}

	front->pd		= pd;
	front->curr_frame	= NULL;
	FUNC0(&front->active);
	FUNC10(&front->queue_lock);

	file->private_data	= front;
	FUNC3(&pd->kref);

	FUNC7(&pd->lock);
	return 0;
out:
	FUNC12(pd->interface);
	FUNC7(&pd->lock);
	return ret;
}