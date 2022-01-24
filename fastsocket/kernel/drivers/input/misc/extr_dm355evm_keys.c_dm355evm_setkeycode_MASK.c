#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct TYPE_3__ {int keycode; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* dm355evm_keys ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, int index, int keycode)
{
	u16		old_keycode;
	unsigned	i;

	if (((unsigned)index) >= FUNC0(dm355evm_keys))
		return -EINVAL;

	old_keycode = dm355evm_keys[index].keycode;
	dm355evm_keys[index].keycode = keycode;
	FUNC2(keycode, dev->keybit);

	for (i = 0; i < FUNC0(dm355evm_keys); i++) {
		if (dm355evm_keys[index].keycode == old_keycode)
			goto done;
	}
	FUNC1(old_keycode, dev->keybit);
done:
	return 0;
}