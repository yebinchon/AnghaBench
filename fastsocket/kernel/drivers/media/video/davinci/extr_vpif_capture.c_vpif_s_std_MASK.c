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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vpif_fh {int initialized; int /*<<< orphan*/  prio; struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int /*<<< orphan*/  lock; scalar_t__ started; } ;
struct TYPE_3__ {int /*<<< orphan*/  stdid; } ;
struct channel_obj {scalar_t__ channel_id; size_t curr_sd_index; TYPE_1__ video; int /*<<< orphan*/  prio; struct common_obj* common; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 scalar_t__ VPIF_CHANNEL0_VIDEO ; 
 scalar_t__ VPIF_CHANNEL1_VIDEO ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_std ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct channel_obj*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_2__ vpif_obj ; 
 scalar_t__ FUNC7 (struct channel_obj*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	int ret = 0;

	FUNC5(2, debug, "vpif_s_std\n");

	if (common->started) {
		FUNC6("streaming in progress\n");
		return -EBUSY;
	}

	if ((VPIF_CHANNEL0_VIDEO == ch->channel_id) ||
	    (VPIF_CHANNEL1_VIDEO == ch->channel_id)) {
		if (!fh->initialized) {
			FUNC5(1, debug, "Channel Busy\n");
			return -EBUSY;
		}
	}

	ret = FUNC2(&ch->prio, &fh->prio);
	if (0 != ret)
		return ret;

	fh->initialized = 1;

	/* Call encoder subdevice function to set the standard */
	if (FUNC0(&common->lock))
		return -ERESTARTSYS;

	ch->video.stdid = *std_id;

	/* Get the information about the standard */
	if (FUNC7(ch)) {
		ret = -EINVAL;
		FUNC6("Error getting the standard info\n");
		goto s_std_exit;
	}

	/* Configure the default format information */
	FUNC4(ch);

	/* set standard in the sub device */
	ret = FUNC3(vpif_obj.sd[ch->curr_sd_index], core,
				s_std, *std_id);
	if (ret < 0)
		FUNC5(1, debug, "Failed to set standard for sub devices\n");

s_std_exit:
	FUNC1(&common->lock);
	return ret;
}