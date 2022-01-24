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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct si4713_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  frequency; scalar_t__ power_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct si4713_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct si4713_device* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
	struct si4713_device *sdev = FUNC4(sd);
	int rval = 0;

	f->type = V4L2_TUNER_RADIO;

	FUNC0(&sdev->mutex);

	if (sdev->power_state) {
		u16 freq;
		u8 p, a, n;

		rval = FUNC3(sdev, 0x00, &freq, &p, &a, &n);
		if (rval < 0)
			goto unlock;

		sdev->frequency = freq;
	}

	f->frequency = FUNC2(sdev->frequency);

unlock:
	FUNC1(&sdev->mutex);
	return rval;
}