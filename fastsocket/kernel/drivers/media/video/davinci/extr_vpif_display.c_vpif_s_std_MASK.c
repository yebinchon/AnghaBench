#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int v4l2_std_id ;
struct vpif_fh {struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  width; int /*<<< orphan*/  bytesperline; } ;
struct TYPE_13__ {TYPE_4__ pix; } ;
struct TYPE_14__ {TYPE_5__ fmt; } ;
struct common_obj {int /*<<< orphan*/  lock; TYPE_6__ fmt; scalar_t__ started; } ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_11__ {TYPE_2__ std_info; } ;
struct TYPE_9__ {int stdid; } ;
struct channel_obj {size_t channel_id; TYPE_3__ vpifparams; TYPE_1__ video; struct common_obj* common; } ;
struct TYPE_16__ {int* channel_bufsize; } ;
struct TYPE_15__ {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int DM646X_V4L2_STD ; 
 int EBUSY ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 size_t VPIF_VIDEO_INDEX ; 
 TYPE_8__ config_params ; 
 int /*<<< orphan*/  core ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  s_std_output ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC3 (struct channel_obj*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct channel_obj*) ; 
 TYPE_7__ vpif_obj ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	int ret = 0;

	if (!(*std_id & DM646X_V4L2_STD))
		return -EINVAL;

	if (common->started) {
		FUNC4("streaming in progress\n");
		return -EBUSY;
	}

	/* Call encoder subdevice function to set the standard */
	if (FUNC0(&common->lock))
		return -ERESTARTSYS;

	ch->video.stdid = *std_id;
	/* Get the information about the standard */
	if (FUNC5(ch)) {
		FUNC4("Error getting the standard info\n");
		return -EINVAL;
	}

	if ((ch->vpifparams.std_info.width *
		ch->vpifparams.std_info.height * 2) >
		config_params.channel_bufsize[ch->channel_id]) {
		FUNC4("invalid std for this size\n");
		ret = -EINVAL;
		goto s_std_exit;
	}

	common->fmt.fmt.pix.bytesperline = common->fmt.fmt.pix.width;
	/* Configure the default format information */
	FUNC3(ch);

	ret = FUNC2(&vpif_obj.v4l2_dev, 1, video,
						s_std_output, *std_id);
	if (ret < 0) {
		FUNC4("Failed to set output standard\n");
		goto s_std_exit;
	}

	ret = FUNC2(&vpif_obj.v4l2_dev, 1, core,
							s_std, *std_id);
	if (ret < 0)
		FUNC4("Failed to set standard for sub devices\n");

s_std_exit:
	FUNC1(&common->lock);
	return ret;
}