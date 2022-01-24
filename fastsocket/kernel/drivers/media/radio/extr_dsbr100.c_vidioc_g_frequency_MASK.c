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
struct file {int dummy; } ;
struct dsbr100_device {int /*<<< orphan*/  curfreq; scalar_t__ removed; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 struct dsbr100_device* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct dsbr100_device *radio = FUNC0(file);

	/* safety check */
	if (radio->removed)
		return -EIO;

	f->type = V4L2_TUNER_RADIO;
	f->frequency = radio->curfreq;
	return 0;
}