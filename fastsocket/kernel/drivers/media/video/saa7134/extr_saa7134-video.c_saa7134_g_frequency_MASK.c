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
struct v4l2_frequency {int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct saa7134_fh {scalar_t__ radio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int /*<<< orphan*/  ctl_freq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 

__attribute__((used)) static int FUNC0(struct file *file, void *priv,
					struct v4l2_frequency *f)
{
	struct saa7134_fh *fh = priv;
	struct saa7134_dev *dev = fh->dev;

	f->type = fh->radio ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
	f->frequency = dev->ctl_freq;

	return 0;
}