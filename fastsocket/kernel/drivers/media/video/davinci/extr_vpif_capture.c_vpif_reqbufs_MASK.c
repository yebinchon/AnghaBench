#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct vpif_fh {int* io_allowed; int /*<<< orphan*/  initialized; struct channel_obj* channel; } ;
struct videobuf_buffer {int dummy; } ;
struct v4l2_requestbuffers {int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct common_obj {int io_usrs; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_queue; int /*<<< orphan*/  dma_queue; int /*<<< orphan*/  memory; TYPE_3__ fmt; int /*<<< orphan*/  irqlock; } ;
struct channel_obj {scalar_t__ channel_id; struct common_obj* common; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ VPIF_CHANNEL0_VIDEO ; 
 scalar_t__ VPIF_CHANNEL1_VIDEO ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_qops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vpif_fh*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
			struct v4l2_requestbuffers *reqbuf)
{
	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common;
	u8 index = 0;
	int ret = 0;

	FUNC5(2, debug, "vpif_reqbufs\n");

	/**
	 * This file handle has not initialized the channel,
	 * It is not allowed to do settings
	 */
	if ((VPIF_CHANNEL0_VIDEO == ch->channel_id)
	    || (VPIF_CHANNEL1_VIDEO == ch->channel_id)) {
		if (!fh->initialized) {
			FUNC5(1, debug, "Channel Busy\n");
			return -EBUSY;
		}
	}

	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != reqbuf->type)
		return -EINVAL;

	index = VPIF_VIDEO_INDEX;

	common = &ch->common[index];

	if (FUNC1(&common->lock))
		return -ERESTARTSYS;

	if (0 != common->io_usrs) {
		ret = -EBUSY;
		goto reqbuf_exit;
	}

	/* Initialize videobuf queue as per the buffer type */
	FUNC3(&common->buffer_queue,
					    &video_qops, NULL,
					    &common->irqlock,
					    reqbuf->type,
					    common->fmt.fmt.pix.field,
					    sizeof(struct videobuf_buffer), fh);

	/* Set io allowed member of file handle to TRUE */
	fh->io_allowed[index] = 1;
	/* Increment io usrs member of channel object to 1 */
	common->io_usrs = 1;
	/* Store type of memory requested in channel object */
	common->memory = reqbuf->memory;
	FUNC0(&common->dma_queue);

	/* Allocate buffers */
	ret = FUNC4(&common->buffer_queue, reqbuf);

reqbuf_exit:
	FUNC2(&common->lock);
	return ret;
}