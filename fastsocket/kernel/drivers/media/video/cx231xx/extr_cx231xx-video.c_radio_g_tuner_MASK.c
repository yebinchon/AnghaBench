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
struct v4l2_tuner {scalar_t__ index; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  s_tuner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, struct v4l2_tuner *t)
{
	struct cx231xx *dev = ((struct cx231xx_fh *)priv)->dev;

	if (FUNC2(t->index > 0))
		return -EINVAL;

	FUNC1(t->name, "Radio");
	t->type = V4L2_TUNER_RADIO;

	FUNC0(dev, tuner, s_tuner, t);

	return 0;
}