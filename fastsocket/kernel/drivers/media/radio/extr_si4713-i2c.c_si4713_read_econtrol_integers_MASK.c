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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_ext_control {scalar_t__ id; int value; } ;
struct si4713_device {int /*<<< orphan*/  mutex; scalar_t__ power_state; } ;
typedef  scalar_t__ s32 ;
typedef  int s16 ;

/* Variables and functions */
 scalar_t__ V4L2_CID_AUDIO_COMPRESSION_THRESHOLD ; 
 int FUNC0 (int,unsigned long*,int) ; 
 int FUNC1 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct si4713_device*,scalar_t__,int**,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int*,unsigned long**,int*) ; 
 scalar_t__ FUNC5 (struct si4713_device*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct si4713_device *sdev,
				struct v4l2_ext_control *control)
{
	s32 rval;
	u32 *shadow = NULL, val = 0;
	s32 bit = 0, mask = 0;
	u16 property = 0;
	int mul = 0;
	unsigned long *table = NULL;
	int size = 0;

	rval = FUNC4(sdev, control->id, &shadow, &bit,
			&mask, &property, &mul, &table, &size);
	if (rval < 0)
		goto exit;

	FUNC2(&sdev->mutex);

	if (sdev->power_state) {
		rval = FUNC5(sdev, property, &val);
		if (rval < 0)
			goto unlock;

		/* Keep negative values for threshold */
		if (control->id == V4L2_CID_AUDIO_COMPRESSION_THRESHOLD)
			*shadow = (s16)val;
		else if (mask)
			*shadow = FUNC1(val, bit, mask);
		else if (mul)
			*shadow = val * mul;
		else
			*shadow = FUNC0(val, table, size);
	}

	control->value = *shadow;

unlock:
	FUNC3(&sdev->mutex);
exit:
	return rval;
}