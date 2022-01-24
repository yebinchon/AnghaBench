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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vpif_fh {struct channel_obj* channel; } ;
struct file {int dummy; } ;
struct common_obj {int /*<<< orphan*/  lock; } ;
struct channel_obj {size_t curr_sd_index; struct common_obj* common; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sd; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  querystd ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ vpif_obj ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	int ret = 0;

	FUNC3(2, debug, "vpif_querystd\n");

	if (FUNC0(&common->lock))
		return -ERESTARTSYS;

	/* Call querystd function of decoder device */
	ret = FUNC2(vpif_obj.sd[ch->curr_sd_index], video,
				querystd, std_id);
	if (ret < 0)
		FUNC3(1, debug, "Failed to set standard for sub devices\n");

	FUNC1(&common->lock);
	return ret;
}