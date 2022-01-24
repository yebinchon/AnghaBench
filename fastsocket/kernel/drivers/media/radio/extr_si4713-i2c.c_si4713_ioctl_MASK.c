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
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_subdev {int dummy; } ;
struct si4713_rnl {int /*<<< orphan*/  rnl; int /*<<< orphan*/  frequency; } ;
struct si4713_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tune_rnl; int /*<<< orphan*/  power_state; } ;

/* Variables and functions */
 long EINVAL ; 
 int ENOIOCTLCMD ; 
#define  SI4713_IOC_MEASURE_RNL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct si4713_device*) ; 
 struct si4713_device* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

long FUNC6(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
	struct si4713_device *sdev = FUNC4(sd);
	struct si4713_rnl *rnl = arg;
	u16 frequency;
	int rval = 0;

	if (!arg)
		return -EINVAL;

	FUNC0(&sdev->mutex);
	switch (cmd) {
	case SI4713_IOC_MEASURE_RNL:
		frequency = FUNC5(rnl->frequency);

		if (sdev->power_state) {
			/* Set desired measurement frequency */
			rval = FUNC2(sdev, frequency, 0);
			if (rval < 0)
				goto unlock;
			/* get results from tune status */
			rval = FUNC3(sdev);
			if (rval < 0)
				goto unlock;
		}
		rnl->rnl = sdev->tune_rnl;
		break;

	default:
		/* nothing */
		rval = -ENOIOCTLCMD;
	}

unlock:
	FUNC1(&sdev->mutex);
	return rval;
}