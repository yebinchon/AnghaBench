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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_modulator {scalar_t__ index; int txsubchans; } ;
struct TYPE_2__ {void* enabled; } ;
struct si4713_device {int /*<<< orphan*/  mutex; TYPE_1__ rds_info; void* stereo; scalar_t__ power_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SI4713_TX_COMPONENT_ENABLE ; 
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_RDS ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC3 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si4713_device* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, struct v4l2_modulator *vm)
{
	struct si4713_device *sdev = FUNC5(sd);
	int rval = 0;
	u16 stereo, rds;
	u32 p;

	if (!sdev)
		return -ENODEV;

	if (vm->index > 0)
		return -EINVAL;

	/* Set audio mode: mono or stereo */
	if (vm->txsubchans & V4L2_TUNER_SUB_STEREO)
		stereo = 1;
	else if (vm->txsubchans & V4L2_TUNER_SUB_MONO)
		stereo = 0;
	else
		return -EINVAL;

	rds = !!(vm->txsubchans & V4L2_TUNER_SUB_RDS);

	FUNC0(&sdev->mutex);

	if (sdev->power_state) {
		rval = FUNC3(sdev,
						SI4713_TX_COMPONENT_ENABLE, &p);
		if (rval < 0)
			goto unlock;

		p = FUNC2(p, stereo, 1, 1 << 1);
		p = FUNC2(p, rds, 2, 1 << 2);

		rval = FUNC4(sdev,
						SI4713_TX_COMPONENT_ENABLE, p);
		if (rval < 0)
			goto unlock;
	}

	sdev->stereo = stereo;
	sdev->rds_info.enabled = rds;

unlock:
	FUNC1(&sdev->mutex);
	return rval;
}