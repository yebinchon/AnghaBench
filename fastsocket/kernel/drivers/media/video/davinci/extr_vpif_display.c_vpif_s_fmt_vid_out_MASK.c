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
struct vpif_fh {int initialized; int /*<<< orphan*/  prio; struct channel_obj* channel; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct common_obj {int /*<<< orphan*/  lock; struct v4l2_format fmt; scalar_t__ started; } ;
struct channel_obj {scalar_t__ channel_id; int /*<<< orphan*/  prio; struct common_obj* common; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 scalar_t__ VPIF_CHANNEL2_VIDEO ; 
 scalar_t__ VPIF_CHANNEL3_VIDEO ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct channel_obj*,struct v4l2_pix_format*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct vpif_fh *fh = priv;
	struct v4l2_pix_format *pixfmt;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	int ret = 0;

	if ((VPIF_CHANNEL2_VIDEO == ch->channel_id)
	    || (VPIF_CHANNEL3_VIDEO == ch->channel_id)) {
		if (!fh->initialized) {
			FUNC4(1, debug, "Channel Busy\n");
			return -EBUSY;
		}

		/* Check for the priority */
		ret = FUNC2(&ch->prio, &fh->prio);
		if (0 != ret)
			return ret;
		fh->initialized = 1;
	}

	if (common->started) {
		FUNC4(1, debug, "Streaming in progress\n");
		return -EBUSY;
	}

	pixfmt = &fmt->fmt.pix;
	/* Check for valid field format */
	ret = FUNC3(ch, pixfmt);
	if (ret)
		return ret;

	/* store the pix format in the channel object */
	common->fmt.fmt.pix = *pixfmt;
	/* store the format in the channel object */
	if (FUNC0(&common->lock))
		return -ERESTARTSYS;

	common->fmt = *fmt;
	FUNC1(&common->lock);

	return 0;
}