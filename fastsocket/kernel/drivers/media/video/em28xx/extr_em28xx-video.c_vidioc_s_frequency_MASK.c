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
struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int /*<<< orphan*/  frequency; } ;
struct file {int dummy; } ;
struct em28xx_fh {int radio; struct em28xx* dev; } ;
struct em28xx {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctl_freq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_ANALOG_TV ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct em28xx_fh      *fh  = priv;
	struct em28xx         *dev = fh->dev;
	int                   rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	if (0 != f->tuner)
		return -EINVAL;

	if (FUNC1(0 == fh->radio && f->type != V4L2_TUNER_ANALOG_TV))
		return -EINVAL;
	if (FUNC1(1 == fh->radio && f->type != V4L2_TUNER_RADIO))
		return -EINVAL;

	dev->ctl_freq = f->frequency;
	FUNC2(&dev->v4l2_dev, 0, tuner, s_frequency, f);

	return 0;
}