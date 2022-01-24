#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_format {scalar_t__ type; } ;
struct file {int dummy; } ;
struct common_obj {int /*<<< orphan*/  lock; struct v4l2_format fmt; } ;
struct channel_obj {struct common_obj* common; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 size_t VPIF_VIDEO_INDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct channel_obj*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

	/* Check the validity of the buffer type */
	if (common->fmt.type != fmt->type)
		return -EINVAL;

	/* Fill in the information about format */
	if (FUNC0(&common->lock))
		return -ERESTARTSYS;

	if (FUNC3(ch)) {
		FUNC2("Error getting the standard info\n");
		return -EINVAL;
	}

	*fmt = common->fmt;
	FUNC1(&common->lock);
	return 0;
}