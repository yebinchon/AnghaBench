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
struct ml_device {int dummy; } ;
struct input_dev {int /*<<< orphan*/  event_lock; TYPE_1__* ff; } ;
struct TYPE_2__ {struct ml_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ml_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long timer_data)
{
	struct input_dev *dev = (struct input_dev *)timer_data;
	struct ml_device *ml = dev->ff->private;
	unsigned long flags;

	FUNC0("timer: updating effects");

	FUNC2(&dev->event_lock, flags);
	FUNC1(ml);
	FUNC3(&dev->event_lock, flags);
}