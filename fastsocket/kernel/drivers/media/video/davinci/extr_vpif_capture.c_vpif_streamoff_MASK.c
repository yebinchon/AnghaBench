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
struct vpif_fh {int /*<<< orphan*/ * io_allowed; struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int /*<<< orphan*/  buffer_queue; int /*<<< orphan*/  lock; scalar_t__ started; } ;
struct channel_obj {scalar_t__ channel_id; size_t curr_sd_index; struct common_obj* common; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int /*<<< orphan*/ * sd; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOIOCTLCMD ; 
 int ERESTARTSYS ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ VPIF_CHANNEL0_VIDEO ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ vpif_obj ; 

__attribute__((used)) static int FUNC9(struct file *file, void *priv,
				enum v4l2_buf_type buftype)
{

	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	int ret;

	FUNC8(2, debug, "vpif_streamoff\n");

	if (buftype != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		FUNC8(1, debug, "buffer type not supported\n");
		return -EINVAL;
	}

	/* If io is allowed for this file handle, return error */
	if (!fh->io_allowed[VPIF_VIDEO_INDEX]) {
		FUNC8(1, debug, "io not allowed\n");
		return -EACCES;
	}

	/* If streaming is not started, return error */
	if (!common->started) {
		FUNC8(1, debug, "channel->started\n");
		return -EINVAL;
	}

	if (FUNC4(&common->lock))
		return -ERESTARTSYS;

	/* disable channel */
	if (VPIF_CHANNEL0_VIDEO == ch->channel_id) {
		FUNC2(0);
		FUNC0(0);
	} else {
		FUNC3(0);
		FUNC1(0);
	}

	common->started = 0;

	ret = FUNC6(vpif_obj.sd[ch->curr_sd_index], video,
				s_stream, 0);

	if (ret && (ret != -ENOIOCTLCMD))
		FUNC8(1, debug, "stream off failed in subdev\n");

	FUNC5(&common->lock);

	return FUNC7(&common->buffer_queue);
}