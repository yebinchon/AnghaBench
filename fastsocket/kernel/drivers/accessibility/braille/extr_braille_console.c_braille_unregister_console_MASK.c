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
struct console {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct console* braille_co ; 
 int /*<<< orphan*/  keyboard_notifier_block ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vt_notifier_block ; 

int FUNC2(struct console *console)
{
	if (braille_co != console)
		return -EINVAL;
	FUNC0(&keyboard_notifier_block);
	FUNC1(&vt_notifier_block);
	braille_co = NULL;
	return 0;
}