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
struct key_entry {scalar_t__ type; int keycode; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int EINVAL ; 
 int KEY_MAX ; 
 scalar_t__ KE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct key_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, int scancode, int keycode)
{
	struct key_entry *key;
	int old_keycode;

	if (keycode < 0 || keycode > KEY_MAX)
		return -EINVAL;

	key = FUNC2(scancode);
	if (key && key->type == KE_KEY) {
		old_keycode = key->keycode;
		key->keycode = keycode;
		FUNC3(keycode, dev->keybit);
		if (!FUNC1(old_keycode))
			FUNC0(old_keycode, dev->keybit);
		return 0;
	}

	return -EINVAL;
}