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
typedef  scalar_t__ v4l2_std_id ;
struct saa7146_standard {scalar_t__ id; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 scalar_t__ V4L2_STD_PAL_BG ; 
 scalar_t__ V4L2_STD_PAL_I ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  s_gpio ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC1 (struct mxb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct saa7146_dev *dev, struct saa7146_standard *standard)
{
	struct mxb *mxb = (struct mxb *)dev->ext_priv;

	if (V4L2_STD_PAL_I == standard->id) {
		v4l2_std_id std = V4L2_STD_PAL_I;

		FUNC0(("VIDIOC_S_STD: setting mxb for PAL_I.\n"));
		/* set the 7146 gpio register -- I don't know what this does exactly */
		FUNC2(dev, GPIO_CTRL, 0x00404050);
		/* unset the 7111 gpio register -- I don't know what this does exactly */
		FUNC1(mxb, core, s_gpio, 0);
		FUNC3(mxb, core, s_std, std);
	} else {
		v4l2_std_id std = V4L2_STD_PAL_BG;

		FUNC0(("VIDIOC_S_STD: setting mxb for PAL/NTSC/SECAM.\n"));
		/* set the 7146 gpio register -- I don't know what this does exactly */
		FUNC2(dev, GPIO_CTRL, 0x00404050);
		/* set the 7111 gpio register -- I don't know what this does exactly */
		FUNC1(mxb, core, s_gpio, 1);
		FUNC3(mxb, core, s_std, std);
	}
	return 0;
}