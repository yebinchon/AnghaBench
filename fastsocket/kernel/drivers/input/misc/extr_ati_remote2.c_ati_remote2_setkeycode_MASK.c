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
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct ati_remote2 {int mode_mask; int** keycode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ATI_REMOTE2_MODES ; 
 int ATI_REMOTE2_PC ; 
 int EINVAL ; 
 int KEY_MAX ; 
 int KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ati_remote2_key_table ; 
 int FUNC3 (int) ; 
 struct ati_remote2* FUNC4 (struct input_dev*) ; 

__attribute__((used)) static int FUNC5(struct input_dev *idev, int scancode, int keycode)
{
	struct ati_remote2 *ar2 = FUNC4(idev);
	int index, mode, old_keycode;

	mode = scancode >> 8;
	if (mode > ATI_REMOTE2_PC || !((1 << mode) & ar2->mode_mask))
		return -EINVAL;

	index = FUNC3(scancode & 0xFF);
	if (index < 0)
		return -EINVAL;

	if (keycode < KEY_RESERVED || keycode > KEY_MAX)
		return -EINVAL;

	old_keycode = ar2->keycode[mode][index];
	ar2->keycode[mode][index] = keycode;
	FUNC2(keycode, idev->keybit);

	for (mode = 0; mode < ATI_REMOTE2_MODES; mode++) {
		for (index = 0; index < FUNC0(ati_remote2_key_table); index++) {
			if (ar2->keycode[mode][index] == old_keycode)
				return 0;
		}
	}

	FUNC1(old_keycode, idev->keybit);

	return 0;
}