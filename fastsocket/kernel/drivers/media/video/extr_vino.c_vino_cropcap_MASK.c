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
struct vino_data_norm {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct vino_channel_settings {size_t data_norm; } ;
struct v4l2_rect {int dummy; } ;
struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct v4l2_cropcap {int type; TYPE_1__ pixelaspect; TYPE_3__ bounds; int /*<<< orphan*/  defrect; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE 129 
#define  V4L2_BUF_TYPE_VIDEO_OVERLAY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 struct vino_data_norm* vino_data_norms ; 
 TYPE_2__* vino_drvdata ; 

__attribute__((used)) static int FUNC4(struct file *file, void *__fh,
			     struct v4l2_cropcap *ccap)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	const struct vino_data_norm *norm;
	unsigned long flags;

	switch (ccap->type) {
	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
		FUNC1(&vino_drvdata->input_lock, flags);

		norm = &vino_data_norms[vcs->data_norm];

		FUNC2(&vino_drvdata->input_lock, flags);

		ccap->bounds.left = 0;
		ccap->bounds.top = 0;
		ccap->bounds.width = norm->width;
		ccap->bounds.height = norm->height;
		FUNC0(&ccap->defrect, &ccap->bounds,
		       sizeof(struct v4l2_rect));

		ccap->pixelaspect.numerator = 1;
		ccap->pixelaspect.denominator = 1;
		break;
	case V4L2_BUF_TYPE_VIDEO_OVERLAY:
	default:
		return -EINVAL;
	}

	return 0;
}