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
struct input_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct input_dev *dev,
		 unsigned int type, unsigned int code, int value)
{
	unsigned long flags;

	if (FUNC2(type, dev->evbit, EV_MAX)) {

		FUNC3(&dev->event_lock, flags);
		FUNC0(type, code, value);
		FUNC1(dev, type, code, value);
		FUNC4(&dev->event_lock, flags);
	}
}