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
struct v4l2_frequency {int frequency; scalar_t__ type; scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cx231xx_fh {int radio; struct cx231xx* dev; } ;
struct cx231xx {int ctl_freq; scalar_t__ tuner_type; int norm; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TUNER_NXP_TDA18271 ; 
 int V4L2_STD_B ; 
 int V4L2_STD_GH ; 
 int V4L2_STD_MN ; 
 int V4L2_STD_NTSC_443 ; 
 int V4L2_STD_PAL_DK ; 
 int V4L2_STD_PAL_I ; 
 int V4L2_STD_SECAM_DK ; 
 int V4L2_STD_SECAM_L ; 
 int V4L2_STD_SECAM_LC ; 
 scalar_t__ V4L2_TUNER_ANALOG_TV ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,int,int,int) ; 
 int FUNC4 (struct cx231xx*) ; 
 int FUNC5 (struct cx231xx*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct cx231xx*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
			      struct v4l2_frequency *f)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	int rc;
	u32 if_frequency = 5400000;

	FUNC2("Enter vidioc_s_frequency()f->frequency=%d;f->type=%d\n",
		 f->frequency, f->type);
	/*cx231xx_info("f->type:  1-radio 2-analogTV 3-digitalTV\n");*/

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	if (0 != f->tuner)
		return -EINVAL;

	if (FUNC6(0 == fh->radio && f->type != V4L2_TUNER_ANALOG_TV))
		return -EINVAL;
	if (FUNC6(1 == fh->radio && f->type != V4L2_TUNER_RADIO))
		return -EINVAL;

	/* set pre channel change settings in DIF first */
	rc = FUNC5(dev);

	dev->ctl_freq = f->frequency;
	FUNC0(dev, tuner, s_frequency, f);

	/* set post channel change settings in DIF first */
	rc = FUNC4(dev);

	if (dev->tuner_type == TUNER_NXP_TDA18271) {
		if (dev->norm & (V4L2_STD_MN | V4L2_STD_NTSC_443))
			if_frequency = 5400000;  /*5.4MHz	*/
		else if (dev->norm & V4L2_STD_B)
			if_frequency = 6000000;  /*6.0MHz	*/
		else if (dev->norm & (V4L2_STD_PAL_DK | V4L2_STD_SECAM_DK))
			if_frequency = 6900000;  /*6.9MHz	*/
		else if (dev->norm & V4L2_STD_GH)
			if_frequency = 7100000;  /*7.1MHz	*/
		else if (dev->norm & V4L2_STD_PAL_I)
			if_frequency = 7250000;  /*7.25MHz	*/
		else if (dev->norm & V4L2_STD_SECAM_L)
			if_frequency = 6900000;  /*6.9MHz	*/
		else if (dev->norm & V4L2_STD_SECAM_LC)
			if_frequency = 1250000;  /*1.25MHz	*/

		FUNC2("if_frequency is set to %d\n", if_frequency);
		FUNC3(dev, if_frequency, 1, 1);

		FUNC7(dev);
	}

	FUNC2("Set New FREQUENCY to %d\n", f->frequency);

	return rc;
}