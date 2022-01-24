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
struct ipath_devdata {int /*<<< orphan*/  user_dev; int /*<<< orphan*/  user_cdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  user_count ; 
 int /*<<< orphan*/  user_setup ; 
 int /*<<< orphan*/  wildcard_cdev ; 
 int /*<<< orphan*/  wildcard_dev ; 

void FUNC5(struct ipath_devdata *dd)
{
	FUNC3(&dd->user_cdev, &dd->user_dev);

	if (FUNC0(&user_count) == 0) {
		if (FUNC1(&user_setup) == 0)
			goto bail;

		FUNC3(&wildcard_cdev, &wildcard_dev);
		FUNC4();

		FUNC2(&user_setup, 0);
	}
bail:
	return;
}