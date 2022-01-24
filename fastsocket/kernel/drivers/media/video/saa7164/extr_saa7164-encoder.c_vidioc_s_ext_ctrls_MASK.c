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
struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int dummy; } ;
struct saa7164_port {int dummy; } ;
struct saa7164_encoder_fh {struct saa7164_port* port; } ;
struct file {struct saa7164_encoder_fh* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CTRL_CLASS_MPEG ; 
 int FUNC0 (struct saa7164_port*,struct v4l2_ext_control*) ; 
 int FUNC1 (struct v4l2_ext_control*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
	struct v4l2_ext_controls *ctrls)
{
	struct saa7164_encoder_fh *fh = file->private_data;
	struct saa7164_port *port = fh->port;
	int i, err = 0;

	if (ctrls->ctrl_class == V4L2_CTRL_CLASS_MPEG) {
		for (i = 0; i < ctrls->count; i++) {
			struct v4l2_ext_control *ctrl = ctrls->controls + i;

			err = FUNC1(ctrl, 0);
			if (err) {
				ctrls->error_idx = i;
				break;
			}
			err = FUNC0(port, ctrl);
			if (err) {
				ctrls->error_idx = i;
				break;
			}
		}
		return err;

	}

	return -EINVAL;
}