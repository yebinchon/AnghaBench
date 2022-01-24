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
struct v4l2_frequency {scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx23885_fh {int radio; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_ANALOG_TV ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int FUNC0 (struct cx23885_dev*,struct v4l2_frequency*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct cx23885_fh *fh = priv;
	struct cx23885_dev *dev = fh->dev;

	if (FUNC1(0 == fh->radio && f->type != V4L2_TUNER_ANALOG_TV))
		return -EINVAL;
	if (FUNC1(1 == fh->radio && f->type != V4L2_TUNER_RADIO))
		return -EINVAL;

	return
		FUNC0(dev, f);
}