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
struct v4l2_tuner {int capability; int /*<<< orphan*/  audmode; int /*<<< orphan*/  type; int /*<<< orphan*/  name; scalar_t__ index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int /*<<< orphan*/  cur_mode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int V4L2_TUNER_CAP_LANG1 ; 
 int V4L2_TUNER_CAP_LANG2 ; 
 int V4L2_TUNER_CAP_NORM ; 
 int V4L2_TUNER_CAP_SAP ; 
 int V4L2_TUNER_CAP_STEREO ; 
 int FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_tuner*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh, struct v4l2_tuner *t)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct mxb *mxb = (struct mxb *)dev->ext_priv;

	if (t->index) {
		FUNC0(("VIDIOC_G_TUNER: channel %d does not have a tuner attached.\n", t->index));
		return -EINVAL;
	}

	FUNC1(("VIDIOC_G_TUNER: %d\n", t->index));

	FUNC3(t, 0, sizeof(*t));
	FUNC4(t->name, "TV Tuner", sizeof(t->name));
	t->type = V4L2_TUNER_ANALOG_TV;
	t->capability = V4L2_TUNER_CAP_NORM | V4L2_TUNER_CAP_STEREO |
			V4L2_TUNER_CAP_LANG1 | V4L2_TUNER_CAP_LANG2 | V4L2_TUNER_CAP_SAP;
	t->audmode = mxb->cur_mode;
	return FUNC2(dev, tuner, g_tuner, t);
}