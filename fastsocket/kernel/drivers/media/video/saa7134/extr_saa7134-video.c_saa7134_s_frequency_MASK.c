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
struct saa7134_fh {int radio; int /*<<< orphan*/  prio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctl_freq; int /*<<< orphan*/  prio; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_ANALOG_TV ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
					struct v4l2_frequency *f)
{
	struct saa7134_fh *fh = priv;
	struct saa7134_dev *dev = fh->dev;
	int err;

	err = FUNC4(&dev->prio, fh->prio);
	if (0 != err)
		return err;

	if (0 != f->tuner)
		return -EINVAL;
	if (0 == fh->radio && V4L2_TUNER_ANALOG_TV != f->type)
		return -EINVAL;
	if (1 == fh->radio && V4L2_TUNER_RADIO != f->type)
		return -EINVAL;
	FUNC0(&dev->lock);
	dev->ctl_freq = f->frequency;

	FUNC3(dev, tuner, s_frequency, f);

	FUNC2(dev);
	FUNC1(&dev->lock);
	return 0;
}