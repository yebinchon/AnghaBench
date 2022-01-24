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
struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ zcalib; scalar_t__ ycalib; scalar_t__ xcalib; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 TYPE_1__ ams_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ invert ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct input_polled_dev *dev)
{
	struct input_dev *idev = dev->input;
	s8 x, y, z;

	FUNC3(&ams_info.lock);

	FUNC0(&x, &y, &z);

	x -= ams_info.xcalib;
	y -= ams_info.ycalib;
	z -= ams_info.zcalib;

	FUNC1(idev, ABS_X, invert ? -x : x);
	FUNC1(idev, ABS_Y, invert ? -y : y);
	FUNC1(idev, ABS_Z, z);

	FUNC2(idev);

	FUNC4(&ams_info.lock);
}