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
struct rc_map {unsigned int len; int /*<<< orphan*/  lock; TYPE_1__* scan; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int keycode; } ;

/* Variables and functions */
 int KEY_RESERVED ; 
 struct rc_dev* FUNC0 (struct input_dev*) ; 
 unsigned int FUNC1 (struct rc_map*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct input_dev *idev,
			 int scancode, int *keycode)
{
	struct rc_dev *rdev = FUNC0(idev);
	struct rc_map *rc_map = &rdev->rc_map;
	unsigned long flags;
	unsigned int index;
	int retval;

	FUNC2(&rc_map->lock, flags);

	index = FUNC1(rc_map, scancode);

	if (index >= rc_map->len) {
		*keycode = KEY_RESERVED;
		retval = 0;
		goto out;
	}

	*keycode = rc_map->scan[index].keycode;

	retval = 0;

out:
	FUNC3(&rc_map->lock, flags);
	return retval;
}