#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int /*<<< orphan*/  vbi_dev; int /*<<< orphan*/  video_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vidioc_default; int /*<<< orphan*/  vidioc_s_register; int /*<<< orphan*/  vidioc_g_register; int /*<<< orphan*/  vidioc_s_audio; int /*<<< orphan*/  vidioc_g_audio; int /*<<< orphan*/  vidioc_s_frequency; int /*<<< orphan*/  vidioc_g_frequency; int /*<<< orphan*/  vidioc_s_tuner; int /*<<< orphan*/  vidioc_g_tuner; int /*<<< orphan*/  vidioc_s_input; int /*<<< orphan*/  vidioc_g_input; int /*<<< orphan*/  vidioc_enum_input; int /*<<< orphan*/  vidioc_s_ctrl; int /*<<< orphan*/  vidioc_g_ctrl; int /*<<< orphan*/  vidioc_queryctrl; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VFL_TYPE_VBI ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  mxb_num ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct saa7146_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7146_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  vidioc_default ; 
 int /*<<< orphan*/  vidioc_enum_input ; 
 int /*<<< orphan*/  vidioc_g_audio ; 
 int /*<<< orphan*/  vidioc_g_ctrl ; 
 int /*<<< orphan*/  vidioc_g_frequency ; 
 int /*<<< orphan*/  vidioc_g_input ; 
 int /*<<< orphan*/  vidioc_g_register ; 
 int /*<<< orphan*/  vidioc_g_tuner ; 
 int /*<<< orphan*/  vidioc_queryctrl ; 
 int /*<<< orphan*/  vidioc_s_audio ; 
 int /*<<< orphan*/  vidioc_s_ctrl ; 
 int /*<<< orphan*/  vidioc_s_frequency ; 
 int /*<<< orphan*/  vidioc_s_input ; 
 int /*<<< orphan*/  vidioc_s_register ; 
 int /*<<< orphan*/  vidioc_s_tuner ; 
 TYPE_2__ vv_data ; 

__attribute__((used)) static int FUNC7(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
	struct mxb *mxb = (struct mxb *)dev->ext_priv;

	FUNC0(("dev:%p\n", dev));

	/* checking for i2c-devices can be omitted here, because we
	   already did this in "mxb_vl42_probe" */

	FUNC6(dev, &vv_data);
	vv_data.ops.vidioc_queryctrl = vidioc_queryctrl;
	vv_data.ops.vidioc_g_ctrl = vidioc_g_ctrl;
	vv_data.ops.vidioc_s_ctrl = vidioc_s_ctrl;
	vv_data.ops.vidioc_enum_input = vidioc_enum_input;
	vv_data.ops.vidioc_g_input = vidioc_g_input;
	vv_data.ops.vidioc_s_input = vidioc_s_input;
	vv_data.ops.vidioc_g_tuner = vidioc_g_tuner;
	vv_data.ops.vidioc_s_tuner = vidioc_s_tuner;
	vv_data.ops.vidioc_g_frequency = vidioc_g_frequency;
	vv_data.ops.vidioc_s_frequency = vidioc_s_frequency;
	vv_data.ops.vidioc_g_audio = vidioc_g_audio;
	vv_data.ops.vidioc_s_audio = vidioc_s_audio;
#ifdef CONFIG_VIDEO_ADV_DEBUG
	vv_data.ops.vidioc_g_register = vidioc_g_register;
	vv_data.ops.vidioc_s_register = vidioc_s_register;
#endif
	vv_data.ops.vidioc_default = vidioc_default;
	if (FUNC5(&mxb->video_dev, dev, "mxb", VFL_TYPE_GRABBER)) {
		FUNC1(("cannot register capture v4l2 device. skipping.\n"));
		return -1;
	}

	/* initialization stuff (vbi) (only for revision > 0 and for extensions which want it)*/
	if (FUNC2(dev)) {
		if (FUNC5(&mxb->vbi_dev, dev, "mxb", VFL_TYPE_VBI)) {
			FUNC1(("cannot register vbi v4l2 device. skipping.\n"));
		}
	}

	FUNC4("mxb: found Multimedia eXtension Board #%d.\n", mxb_num);

	mxb_num++;
	FUNC3(dev);
	return 0;
}