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
struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_buffer {scalar_t__ type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct common_obj {int /*<<< orphan*/  buffer_queue; TYPE_1__ fmt; } ;
struct channel_obj {struct common_obj* common; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t VPIF_VIDEO_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_buffer *tbuf)
{
	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

	if (common->fmt.type != tbuf->type)
		return -EINVAL;

	return FUNC0(&common->buffer_queue, tbuf);
}