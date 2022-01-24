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
struct v4l2_control {scalar_t__ id; int /*<<< orphan*/  value; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_2__* ext_vv_data; scalar_t__ ext_priv; } ;
struct mxb {int /*<<< orphan*/  cur_mute; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__* core_ops; } ;
struct TYPE_4__ {int (* vidioc_g_ctrl ) (struct file*,void*,struct v4l2_control*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAXCONTROLS ; 
 scalar_t__ V4L2_CID_AUDIO_MUTE ; 
 TYPE_3__* mxb_controls ; 
 int FUNC2 (struct file*,void*,struct v4l2_control*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_control *vc)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct mxb *mxb = (struct mxb *)dev->ext_priv;
	int i;

	for (i = MAXCONTROLS - 1; i >= 0; i--) {
		if (mxb_controls[i].id == vc->id)
			break;
	}

	if (i < 0)
		return dev->ext_vv_data->core_ops->vidioc_g_ctrl(file, fh, vc);

	if (vc->id == V4L2_CID_AUDIO_MUTE) {
		vc->value = mxb->cur_mute;
		FUNC0(("VIDIOC_G_CTRL V4L2_CID_AUDIO_MUTE:%d.\n", vc->value));
		return 0;
	}

	FUNC1(("VIDIOC_G_CTRL V4L2_CID_AUDIO_MUTE:%d.\n", vc->value));
	return 0;
}