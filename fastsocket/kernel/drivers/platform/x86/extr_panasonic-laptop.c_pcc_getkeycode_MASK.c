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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 struct pcc_acpi* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev, int scancode, int *keycode)
{
	struct pcc_acpi *pcc = FUNC1(dev);

	if (scancode >= FUNC0(pcc->keymap))
		return -EINVAL;

	*keycode = pcc->keymap[scancode];

	return 0;
}