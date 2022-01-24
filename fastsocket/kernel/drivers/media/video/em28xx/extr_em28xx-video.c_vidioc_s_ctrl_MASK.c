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
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {scalar_t__ ac97; } ;
struct em28xx {int /*<<< orphan*/  volume; int /*<<< orphan*/  mute; int /*<<< orphan*/  v4l2_dev; TYPE_1__ audio_mode; } ;

/* Variables and functions */
 scalar_t__ EM28XX_NO_AC97 ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int FUNC0 (struct em28xx*,struct v4l2_control*) ; 
 int FUNC1 (struct em28xx*) ; 
 int FUNC2 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  s_ctrl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
				struct v4l2_control *ctrl)
{
	struct em28xx_fh      *fh  = priv;
	struct em28xx         *dev = fh->dev;
	int                   rc;

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	/* Set an AC97 control */
	if (dev->audio_mode.ac97 != EM28XX_NO_AC97)
		rc = FUNC0(dev, ctrl);
	else
		rc = 1;

	/* It isn't an AC97 control. Sends it to the v4l2 dev interface */
	if (rc == 1) {
		rc = FUNC2(dev, ctrl->id);
		if (!rc)
			FUNC4(&dev->v4l2_dev, 0,
					     core, s_ctrl, ctrl);
		/*
		 * In the case of non-AC97 volume controls, we still need
		 * to do some setups at em28xx, in order to mute/unmute
		 * and to adjust audio volume. However, the value ranges
		 * should be checked by the corresponding V4L subdriver.
		 */
		switch (ctrl->id) {
		case V4L2_CID_AUDIO_MUTE:
			dev->mute = ctrl->value;
			rc = FUNC3(dev);
			break;
		case V4L2_CID_AUDIO_VOLUME:
			dev->volume = ctrl->value;
			rc = FUNC3(dev);
		}
	}
	return (rc < 0) ? rc : 0;
}