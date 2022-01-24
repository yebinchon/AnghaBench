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
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int /*<<< orphan*/  frequency; } ;
struct si4713_device {int frequency; int /*<<< orphan*/  mutex; scalar_t__ power_state; } ;

/* Variables and functions */
 int EDOM ; 
 int FREQ_RANGE_HIGH ; 
 int FREQ_RANGE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct si4713_device*,int) ; 
 struct si4713_device* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
	struct si4713_device *sdev = FUNC4(sd);
	int rval = 0;
	u16 frequency = FUNC5(f->frequency);

	/* Check frequency range */
	if (frequency < FREQ_RANGE_LOW || frequency > FREQ_RANGE_HIGH)
		return -EDOM;

	FUNC0(&sdev->mutex);

	if (sdev->power_state) {
		rval = FUNC3(sdev, frequency);
		if (rval < 0)
			goto unlock;
		frequency = rval;
		rval = 0;
	}
	sdev->frequency = frequency;
	f->frequency = FUNC2(frequency);

unlock:
	FUNC1(&sdev->mutex);
	return rval;
}