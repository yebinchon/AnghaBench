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
struct miscdevice {int minor; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int DYNAMIC_MINORS ; 
 int EINVAL ; 
 int /*<<< orphan*/  MISC_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  misc_class ; 
 int* misc_minors ; 
 int /*<<< orphan*/  misc_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct miscdevice *misc)
{
	int i = misc->minor;

	if (FUNC3(&misc->list))
		return -EINVAL;

	FUNC4(&misc_mtx);
	FUNC2(&misc->list);
	FUNC1(misc_class, FUNC0(MISC_MAJOR, misc->minor));
	if (i < DYNAMIC_MINORS && i>0) {
		misc_minors[i>>3] &= ~(1 << (misc->minor & 7));
	}
	FUNC5(&misc_mtx);
	return 0;
}