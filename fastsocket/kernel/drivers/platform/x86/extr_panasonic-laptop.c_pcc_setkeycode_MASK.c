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
struct pcc_acpi {int* keymap; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int KEY_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pcc_acpi* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcc_acpi*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct input_dev *dev, int scancode, int keycode)
{
	struct pcc_acpi *pcc = FUNC2(dev);
	int oldkeycode;

	if (scancode >= FUNC0(pcc->keymap))
		return -EINVAL;

	if (keycode < 0 || keycode > KEY_MAX)
		return -EINVAL;

	oldkeycode = pcc->keymap[scancode];
	pcc->keymap[scancode] = keycode;

	FUNC4(keycode, dev->keybit);

	if (!FUNC3(pcc, oldkeycode))
		FUNC1(oldkeycode, dev->keybit);

	return 0;
}