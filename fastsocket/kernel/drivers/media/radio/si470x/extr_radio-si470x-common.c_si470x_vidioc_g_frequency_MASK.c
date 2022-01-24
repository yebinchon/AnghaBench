#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct si470x_device {TYPE_1__* videodev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct si470x_device*) ; 
 int FUNC2 (struct si470x_device*,int /*<<< orphan*/ *) ; 
 struct si470x_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
		struct v4l2_frequency *freq)
{
	struct si470x_device *radio = FUNC3(file);
	int retval = 0;

	/* safety checks */
	retval = FUNC1(radio);
	if (retval)
		goto done;

	if (freq->tuner != 0) {
		retval = -EINVAL;
		goto done;
	}

	freq->type = V4L2_TUNER_RADIO;
	retval = FUNC2(radio, &freq->frequency);

done:
	if (retval < 0)
		FUNC0(&radio->videodev->dev,
			"get frequency failed with %d\n", retval);
	return retval;
}