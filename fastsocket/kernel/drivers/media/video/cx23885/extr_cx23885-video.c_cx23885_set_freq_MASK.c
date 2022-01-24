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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct cx23885_dev {scalar_t__ tuner_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct cx23885_dev *dev, struct v4l2_frequency *f)
{
	if (FUNC4(UNSET == dev->tuner_type))
		return -EINVAL;
	if (FUNC4(f->tuner != 0))
		return -EINVAL;

	FUNC2(&dev->lock);
	dev->freq = f->frequency;

	FUNC0(dev, tuner, s_frequency, f);

	/* When changing channels it is required to reset TVAUDIO */
	FUNC1(10);

	FUNC3(&dev->lock);

	return 0;
}