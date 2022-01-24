#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * handler; scalar_t__ busy; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__* adb_handler ; 
 int /*<<< orphan*/  adb_handler_lock ; 
 int /*<<< orphan*/  adb_handler_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int index)
{
	int ret = -ENODEV;

	FUNC0(&adb_handler_mutex);
	FUNC2(&adb_handler_lock);
	if (adb_handler[index].handler) {
		while(adb_handler[index].busy) {
			FUNC3(&adb_handler_lock);
			FUNC4();
			FUNC2(&adb_handler_lock);
		}
		ret = 0;
		adb_handler[index].handler = NULL;
	}
	FUNC3(&adb_handler_lock);
	FUNC1(&adb_handler_mutex);
	return ret;
}