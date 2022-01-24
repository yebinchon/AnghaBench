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
struct v4l2_frequency {int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; int /*<<< orphan*/  tuner; } ;
struct file {int dummy; } ;
struct cadet {int /*<<< orphan*/  curtuner; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct cadet*) ; 
 struct cadet* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct cadet *dev = FUNC1(file);

	f->tuner = dev->curtuner;
	f->type = V4L2_TUNER_RADIO;
	f->frequency = FUNC0(dev);
	return 0;
}