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
struct v4l2_queryctrl {int type; int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; int /*<<< orphan*/  name; } ;
struct v4l2_priv_tun_config {int /*<<< orphan*/ * priv; int /*<<< orphan*/  tuner; } ;
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct saa7134_fh {int /*<<< orphan*/  prio; } ;
struct saa7134_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  tda9887_conf; int /*<<< orphan*/  ctl_automute; int /*<<< orphan*/  ctl_y_odd; int /*<<< orphan*/  ctl_y_even; int /*<<< orphan*/  ctl_mirror; int /*<<< orphan*/  ctl_saturation; int /*<<< orphan*/  ctl_invert; int /*<<< orphan*/  ctl_contrast; int /*<<< orphan*/  ctl_volume; int /*<<< orphan*/  ctl_mute; int /*<<< orphan*/  ctl_hue; int /*<<< orphan*/  ctl_bright; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  SAA7134_DEC_CHROMA_HUE ; 
 int /*<<< orphan*/  SAA7134_DEC_CHROMA_SATURATION ; 
 int /*<<< orphan*/  SAA7134_DEC_LUMA_BRIGHT ; 
 int /*<<< orphan*/  SAA7134_DEC_LUMA_CONTRAST ; 
 int /*<<< orphan*/  TDA9887_AUTOMUTE ; 
 int /*<<< orphan*/  TUNER_TDA9887 ; 
#define  V4L2_CID_AUDIO_MUTE 141 
#define  V4L2_CID_AUDIO_VOLUME 140 
#define  V4L2_CID_BRIGHTNESS 139 
#define  V4L2_CID_CONTRAST 138 
#define  V4L2_CID_HFLIP 137 
#define  V4L2_CID_HUE 136 
#define  V4L2_CID_PRIVATE_AUTOMUTE 135 
#define  V4L2_CID_PRIVATE_INVERT 134 
#define  V4L2_CID_PRIVATE_Y_EVEN 133 
#define  V4L2_CID_PRIVATE_Y_ODD 132 
#define  V4L2_CID_SATURATION 131 
#define  V4L2_CTRL_TYPE_BOOLEAN 130 
#define  V4L2_CTRL_TYPE_INTEGER 129 
#define  V4L2_CTRL_TYPE_MENU 128 
 struct v4l2_queryctrl* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_config ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_priv_tun_config*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct saa7134_dev*,struct saa7134_fh*) ; 
 int /*<<< orphan*/  FUNC12 (struct saa7134_dev*,struct saa7134_fh*) ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(struct saa7134_dev *dev,  struct saa7134_fh *fh, struct v4l2_control *c)
{
	const struct v4l2_queryctrl* ctrl;
	unsigned long flags;
	int restart_overlay = 0;
	int err;

	/* When called from the empress code fh == NULL.
	   That needs to be fixed somehow, but for now this is
	   good enough. */
	if (fh) {
		err = FUNC13(&dev->prio, fh->prio);
		if (0 != err)
			return err;
	}
	err = -EINVAL;

	FUNC2(&dev->lock);

	ctrl = FUNC0(c->id);
	if (NULL == ctrl)
		goto error;

	FUNC1("set_control name=%s val=%d\n",ctrl->name,c->value);
	switch (ctrl->type) {
	case V4L2_CTRL_TYPE_BOOLEAN:
	case V4L2_CTRL_TYPE_MENU:
	case V4L2_CTRL_TYPE_INTEGER:
		if (c->value < ctrl->minimum)
			c->value = ctrl->minimum;
		if (c->value > ctrl->maximum)
			c->value = ctrl->maximum;
		break;
	default:
		/* nothing */;
	};
	switch (c->id) {
	case V4L2_CID_BRIGHTNESS:
		dev->ctl_bright = c->value;
		FUNC8(SAA7134_DEC_LUMA_BRIGHT, dev->ctl_bright);
		break;
	case V4L2_CID_HUE:
		dev->ctl_hue = c->value;
		FUNC8(SAA7134_DEC_CHROMA_HUE, dev->ctl_hue);
		break;
	case V4L2_CID_CONTRAST:
		dev->ctl_contrast = c->value;
		FUNC8(SAA7134_DEC_LUMA_CONTRAST,
			   dev->ctl_invert ? -dev->ctl_contrast : dev->ctl_contrast);
		break;
	case V4L2_CID_SATURATION:
		dev->ctl_saturation = c->value;
		FUNC8(SAA7134_DEC_CHROMA_SATURATION,
			   dev->ctl_invert ? -dev->ctl_saturation : dev->ctl_saturation);
		break;
	case V4L2_CID_AUDIO_MUTE:
		dev->ctl_mute = c->value;
		FUNC5(dev);
		break;
	case V4L2_CID_AUDIO_VOLUME:
		dev->ctl_volume = c->value;
		FUNC6(dev,dev->ctl_volume);
		break;
	case V4L2_CID_PRIVATE_INVERT:
		dev->ctl_invert = c->value;
		FUNC8(SAA7134_DEC_LUMA_CONTRAST,
			   dev->ctl_invert ? -dev->ctl_contrast : dev->ctl_contrast);
		FUNC8(SAA7134_DEC_CHROMA_SATURATION,
			   dev->ctl_invert ? -dev->ctl_saturation : dev->ctl_saturation);
		break;
	case V4L2_CID_HFLIP:
		dev->ctl_mirror = c->value;
		restart_overlay = 1;
		break;
	case V4L2_CID_PRIVATE_Y_EVEN:
		dev->ctl_y_even = c->value;
		restart_overlay = 1;
		break;
	case V4L2_CID_PRIVATE_Y_ODD:
		dev->ctl_y_odd = c->value;
		restart_overlay = 1;
		break;
	case V4L2_CID_PRIVATE_AUTOMUTE:
	{
		struct v4l2_priv_tun_config tda9887_cfg;

		tda9887_cfg.tuner = TUNER_TDA9887;
		tda9887_cfg.priv = &dev->tda9887_conf;

		dev->ctl_automute = c->value;
		if (dev->tda9887_conf) {
			if (dev->ctl_automute)
				dev->tda9887_conf |= TDA9887_AUTOMUTE;
			else
				dev->tda9887_conf &= ~TDA9887_AUTOMUTE;

			FUNC7(dev, tuner, s_config, &tda9887_cfg);
		}
		break;
	}
	default:
		goto error;
	}
	if (restart_overlay && fh && FUNC4(fh, RESOURCE_OVERLAY)) {
		FUNC9(&dev->slock,flags);
		FUNC12(dev,fh);
		FUNC11(dev,fh);
		FUNC10(&dev->slock,flags);
	}
	err = 0;

error:
	FUNC3(&dev->lock);
	return err;
}