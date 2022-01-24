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
struct tps_key_entry {int keycode; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int EINVAL ; 
 int KEY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct tps_key_entry* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, int scancode, int keycode)
{
	struct tps_key_entry *key;
	int old_keycode;

	if (keycode < 0 || keycode > KEY_MAX)
		return -EINVAL;

	key = FUNC3(scancode);

	if (!key)
		return -EINVAL;

	old_keycode = key->keycode;
	key->keycode = keycode;
	FUNC1(keycode, dev->keybit);
	if (!FUNC2(old_keycode))
		FUNC0(old_keycode, dev->keybit);
	return 0;
}