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
struct input_dev {int dummy; } ;
struct ati_remote2 {int mode_mask; int** keycode; } ;

/* Variables and functions */
 int ATI_REMOTE2_PC ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 struct ati_remote2* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *idev,
				  int scancode, int *keycode)
{
	struct ati_remote2 *ar2 = FUNC1(idev);
	int index, mode;

	mode = scancode >> 8;
	if (mode > ATI_REMOTE2_PC || !((1 << mode) & ar2->mode_mask))
		return -EINVAL;

	index = FUNC0(scancode & 0xFF);
	if (index < 0)
		return -EINVAL;

	*keycode = ar2->keycode[mode][index];
	return 0;
}