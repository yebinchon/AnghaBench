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
struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  SENSOR_X ; 
 int /*<<< orphan*/  SENSOR_Y ; 
 int /*<<< orphan*/  applesmc_lock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ rest_x ; 
 scalar_t__ rest_y ; 

__attribute__((used)) static void FUNC5(struct input_polled_dev *dev)
{
	struct input_dev *idev = dev->input;
	s16 x, y;

	FUNC3(&applesmc_lock);

	if (FUNC0(SENSOR_X, &x))
		goto out;
	if (FUNC0(SENSOR_Y, &y))
		goto out;

	x = -x;
	FUNC1(idev, ABS_X, x - rest_x);
	FUNC1(idev, ABS_Y, y - rest_y);
	FUNC2(idev);

out:
	FUNC4(&applesmc_lock);
}