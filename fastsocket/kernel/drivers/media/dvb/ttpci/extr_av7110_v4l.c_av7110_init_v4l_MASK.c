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
struct TYPE_2__ {int /*<<< orphan*/  vidioc_s_fmt_sliced_vbi_out; int /*<<< orphan*/  vidioc_g_fmt_sliced_vbi_out; int /*<<< orphan*/  vidioc_g_sliced_vbi_cap; int /*<<< orphan*/  vidioc_s_audio; int /*<<< orphan*/  vidioc_g_audio; int /*<<< orphan*/  vidioc_s_frequency; int /*<<< orphan*/  vidioc_g_frequency; int /*<<< orphan*/  vidioc_s_tuner; int /*<<< orphan*/  vidioc_g_tuner; int /*<<< orphan*/  vidioc_s_input; int /*<<< orphan*/  vidioc_g_input; int /*<<< orphan*/  vidioc_enum_input; } ;
struct saa7146_ext_vv {TYPE_1__ ops; } ;
struct saa7146_dev {int dummy; } ;
struct av7110 {int /*<<< orphan*/  vbi_dev; int /*<<< orphan*/  v4l_dev; scalar_t__ analog_tuner_flags; struct saa7146_dev* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VFL_TYPE_VBI ; 
 struct saa7146_ext_vv av7110_vv_data_c ; 
 struct saa7146_ext_vv av7110_vv_data_st ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct saa7146_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct saa7146_dev*,struct saa7146_ext_vv*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  vidioc_enum_input ; 
 int /*<<< orphan*/  vidioc_g_audio ; 
 int /*<<< orphan*/  vidioc_g_fmt_sliced_vbi_out ; 
 int /*<<< orphan*/  vidioc_g_frequency ; 
 int /*<<< orphan*/  vidioc_g_input ; 
 int /*<<< orphan*/  vidioc_g_sliced_vbi_cap ; 
 int /*<<< orphan*/  vidioc_g_tuner ; 
 int /*<<< orphan*/  vidioc_s_audio ; 
 int /*<<< orphan*/  vidioc_s_fmt_sliced_vbi_out ; 
 int /*<<< orphan*/  vidioc_s_frequency ; 
 int /*<<< orphan*/  vidioc_s_input ; 
 int /*<<< orphan*/  vidioc_s_tuner ; 

int FUNC4(struct av7110 *av7110)
{
	struct saa7146_dev* dev = av7110->dev;
	struct saa7146_ext_vv *vv_data;
	int ret;

	/* special case DVB-C: these cards have an analog tuner
	   plus need some special handling, so we have separate
	   saa7146_ext_vv data for these... */
	if (av7110->analog_tuner_flags)
		vv_data = &av7110_vv_data_c;
	else
		vv_data = &av7110_vv_data_st;
	ret = FUNC2(dev, vv_data);

	if (ret) {
		FUNC0(("cannot init capture device. skipping.\n"));
		return -ENODEV;
	}
	vv_data->ops.vidioc_enum_input = vidioc_enum_input;
	vv_data->ops.vidioc_g_input = vidioc_g_input;
	vv_data->ops.vidioc_s_input = vidioc_s_input;
	vv_data->ops.vidioc_g_tuner = vidioc_g_tuner;
	vv_data->ops.vidioc_s_tuner = vidioc_s_tuner;
	vv_data->ops.vidioc_g_frequency = vidioc_g_frequency;
	vv_data->ops.vidioc_s_frequency = vidioc_s_frequency;
	vv_data->ops.vidioc_g_audio = vidioc_g_audio;
	vv_data->ops.vidioc_s_audio = vidioc_s_audio;
	vv_data->ops.vidioc_g_sliced_vbi_cap = vidioc_g_sliced_vbi_cap;
	vv_data->ops.vidioc_g_fmt_sliced_vbi_out = vidioc_g_fmt_sliced_vbi_out;
	vv_data->ops.vidioc_s_fmt_sliced_vbi_out = vidioc_s_fmt_sliced_vbi_out;

	if (FUNC1(&av7110->v4l_dev, dev, "av7110", VFL_TYPE_GRABBER)) {
		FUNC0(("cannot register capture device. skipping.\n"));
		FUNC3(dev);
		return -ENODEV;
	}
	if (FUNC1(&av7110->vbi_dev, dev, "av7110", VFL_TYPE_VBI))
		FUNC0(("cannot register vbi v4l2 device. skipping.\n"));
	return 0;
}