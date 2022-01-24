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
struct dongle_driver {int /*<<< orphan*/  dongle_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  dongle_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dongle_driver *drv)
{
	FUNC1(&dongle_list_lock);
	FUNC0(&drv->dongle_list);
	FUNC2(&dongle_list_lock);
	return 0;
}