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
struct v4l2_hw_freq_seek {scalar_t__ tuner; int /*<<< orphan*/  seek_upward; int /*<<< orphan*/  wrap_around; } ;
struct si470x_device {TYPE_1__* videodev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct si470x_device*) ; 
 int FUNC2 (struct si470x_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si470x_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
		struct v4l2_hw_freq_seek *seek)
{
	struct si470x_device *radio = FUNC3(file);
	int retval = 0;

	/* safety checks */
	retval = FUNC1(radio);
	if (retval)
		goto done;

	if (seek->tuner != 0) {
		retval = -EINVAL;
		goto done;
	}

	retval = FUNC2(radio, seek->wrap_around, seek->seek_upward);

done:
	if (retval < 0)
		FUNC0(&radio->videodev->dev,
			"set hardware frequency seek failed with %d\n", retval);
	return retval;
}