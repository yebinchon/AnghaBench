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
typedef  int u32 ;
struct v4l2_queryctrl {int type; int minimum; int maximum; } ;
struct v4l2_control {int id; int value; } ;
struct saa7146_vv {int hflip; int vflip; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCS_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int MASK_06 ; 
 int MASK_22 ; 
 int /*<<< orphan*/  MC2 ; 
#define  V4L2_CID_BRIGHTNESS 135 
#define  V4L2_CID_CONTRAST 134 
#define  V4L2_CID_HFLIP 133 
#define  V4L2_CID_SATURATION 132 
#define  V4L2_CID_VFLIP 131 
#define  V4L2_CTRL_TYPE_BOOLEAN 130 
#define  V4L2_CTRL_TYPE_INTEGER 129 
#define  V4L2_CTRL_TYPE_MENU 128 
 struct v4l2_queryctrl* FUNC3 (int) ; 
 int FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *fh, struct v4l2_control *c)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct saa7146_vv *vv = dev->vv_data;
	const struct v4l2_queryctrl *ctrl;

	ctrl = FUNC3(c->id);
	if (NULL == ctrl) {
		FUNC0(("unknown control %d\n", c->id));
		return -EINVAL;
	}

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
	}

	switch (c->id) {
	case V4L2_CID_BRIGHTNESS: {
		u32 value = FUNC4(dev, BCS_CTRL);
		value &= 0x00ffffff;
		value |= (c->value << 24);
		FUNC7(dev, BCS_CTRL, value);
		FUNC7(dev, MC2, MASK_22 | MASK_06);
		break;
	}
	case V4L2_CID_CONTRAST: {
		u32 value = FUNC4(dev, BCS_CTRL);
		value &= 0xff00ffff;
		value |= (c->value << 16);
		FUNC7(dev, BCS_CTRL, value);
		FUNC7(dev, MC2, MASK_22 | MASK_06);
		break;
	}
	case V4L2_CID_SATURATION: {
		u32 value = FUNC4(dev, BCS_CTRL);
		value &= 0xffffff00;
		value |= (c->value << 0);
		FUNC7(dev, BCS_CTRL, value);
		FUNC7(dev, MC2, MASK_22 | MASK_06);
		break;
	}
	case V4L2_CID_HFLIP:
		/* fixme: we can support changing VFLIP and HFLIP here... */
		if (FUNC1(fh) != 0) {
			FUNC0(("V4L2_CID_HFLIP while active capture.\n"));
			return -EBUSY;
		}
		vv->hflip = c->value;
		break;
	case V4L2_CID_VFLIP:
		if (FUNC1(fh) != 0) {
			FUNC0(("V4L2_CID_VFLIP while active capture.\n"));
			return -EBUSY;
		}
		vv->vflip = c->value;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC2(fh) != 0) {
		FUNC6(fh);
		FUNC5(fh);
	}
	return 0;
}