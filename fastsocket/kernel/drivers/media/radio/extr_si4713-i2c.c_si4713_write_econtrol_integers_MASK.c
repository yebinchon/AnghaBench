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
struct v4l2_ext_control {int value; int /*<<< orphan*/  id; } ;
struct si4713_device {int /*<<< orphan*/  mutex; scalar_t__ power_state; int /*<<< orphan*/  sd; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int,int,int) ; 
 int FUNC4 (struct si4713_device*,int /*<<< orphan*/ ,int**,int*,int*,int /*<<< orphan*/ *,int*,unsigned long**,int*) ; 
 int FUNC5 (struct si4713_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct si4713_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,unsigned long*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct v4l2_ext_control*) ; 

__attribute__((used)) static int FUNC9(struct si4713_device *sdev,
					struct v4l2_ext_control *control)
{
	s32 rval;
	u32 *shadow = NULL, val = 0;
	s32 bit = 0, mask = 0;
	u16 property = 0;
	int mul = 0;
	unsigned long *table = NULL;
	int size = 0;

	rval = FUNC8(&sdev->sd, control);
	if (rval < 0)
		goto exit;

	rval = FUNC4(sdev, control->id, &shadow, &bit,
			&mask, &property, &mul, &table, &size);
	if (rval < 0)
		goto exit;

	val = control->value;
	if (mul) {
		val = control->value / mul;
	} else if (table) {
		rval = FUNC7(control->value, table, size);
		if (rval < 0)
			goto exit;
		val = rval;
		rval = 0;
	}

	FUNC1(&sdev->mutex);

	if (sdev->power_state) {
		if (mask) {
			rval = FUNC5(sdev, property, &val);
			if (rval < 0)
				goto unlock;
			val = FUNC3(val, control->value, bit, mask);
		}

		rval = FUNC6(sdev, property, val);
		if (rval < 0)
			goto unlock;
		if (mask)
			val = control->value;
	}

	if (mul) {
		*shadow = val * mul;
	} else if (table) {
		rval = FUNC0(val, table, size);
		if (rval < 0)
			goto unlock;
		*shadow = rval;
		rval = 0;
	} else {
		*shadow = val;
	}

unlock:
	FUNC2(&sdev->mutex);
exit:
	return rval;
}