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
typedef  int u16 ;
struct v4l2_tuner {int audmode; int /*<<< orphan*/  index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {int current_input; int /*<<< orphan*/  analog_tuner_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MSP_WR_DSP ; 
#define  V4L2_TUNER_MODE_LANG1 131 
#define  V4L2_TUNER_MODE_LANG1_LANG2 130 
#define  V4L2_TUNER_MODE_LANG2 129 
#define  V4L2_TUNER_MODE_STEREO 128 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct av7110*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_tuner *t)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;
	u16 fm_matrix, src;
	FUNC0(2, "VIDIOC_S_TUNER: %d\n", t->index);

	if (!av7110->analog_tuner_flags || av7110->current_input != 1)
		return -EINVAL;

	switch (t->audmode) {
	case V4L2_TUNER_MODE_STEREO:
		FUNC0(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_STEREO\n");
		fm_matrix = 0x3001; /* stereo */
		src = 0x0020;
		break;
	case V4L2_TUNER_MODE_LANG1_LANG2:
		FUNC0(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1_LANG2\n");
		fm_matrix = 0x3000; /* bilingual */
		src = 0x0020;
		break;
	case V4L2_TUNER_MODE_LANG1:
		FUNC0(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1\n");
		fm_matrix = 0x3000; /* mono */
		src = 0x0000;
		break;
	case V4L2_TUNER_MODE_LANG2:
		FUNC0(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG2\n");
		fm_matrix = 0x3000; /* mono */
		src = 0x0010;
		break;
	default: /* case V4L2_TUNER_MODE_MONO: */
		FUNC0(2, "VIDIOC_S_TUNER: TDA9840_SET_MONO\n");
		fm_matrix = 0x3000; /* mono */
		src = 0x0030;
		break;
	}
	FUNC1(av7110, MSP_WR_DSP, 0x000e, fm_matrix);
	FUNC1(av7110, MSP_WR_DSP, 0x0008, src);
	FUNC1(av7110, MSP_WR_DSP, 0x0009, src);
	FUNC1(av7110, MSP_WR_DSP, 0x000a, src);
	return 0;
}