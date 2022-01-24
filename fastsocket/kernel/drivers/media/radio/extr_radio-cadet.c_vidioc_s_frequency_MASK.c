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
struct v4l2_frequency {scalar_t__ type; int frequency; } ;
struct file {int dummy; } ;
struct cadet {int curtuner; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct cadet*,int) ; 
 struct cadet* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct cadet *dev = FUNC1(file);

	if (f->type != V4L2_TUNER_RADIO)
		return -EINVAL;
	if (dev->curtuner == 0 && (f->frequency < 1400 || f->frequency > 1728))
		return -EINVAL;
	if (dev->curtuner == 1 && (f->frequency < 8320 || f->frequency > 26400))
		return -EINVAL;
	FUNC0(dev, f->frequency);
	return 0;
}