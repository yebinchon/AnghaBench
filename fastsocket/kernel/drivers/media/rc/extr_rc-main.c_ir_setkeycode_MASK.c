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
struct rc_map {unsigned int len; int /*<<< orphan*/  lock; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rc_dev* FUNC0 (struct input_dev*) ; 
 unsigned int FUNC1 (struct rc_dev*,struct rc_map*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*,struct rc_map*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct input_dev *idev,
			 int scancode, int keycode)
{
	struct rc_dev *rdev = FUNC0(idev);
	struct rc_map *rc_map = &rdev->rc_map;
	unsigned int index;
	int retval = 0;
	unsigned long flags;

	FUNC3(&rc_map->lock, flags);

	index = FUNC1(rdev, rc_map, scancode, true);
	if (index >= rc_map->len) {
		retval = -ENOMEM;
		goto out;
	}

	FUNC2(rdev, rc_map, index, keycode);

out:
	FUNC4(&rc_map->lock, flags);
	return retval;
}