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
struct input_dev {int dummy; } ;
struct gc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  timer; TYPE_1__* pd; int /*<<< orphan*/  used; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ GC_REFRESH_TIME ; 
 struct gc* FUNC0 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev)
{
	struct gc *gc = FUNC0(dev);
	int err;

	err = FUNC2(&gc->mutex);
	if (err)
		return err;

	if (!gc->used++) {
		FUNC4(gc->pd);
		FUNC5(gc->pd->port, 0x04);
		FUNC1(&gc->timer, jiffies + GC_REFRESH_TIME);
	}

	FUNC3(&gc->mutex);
	return 0;
}