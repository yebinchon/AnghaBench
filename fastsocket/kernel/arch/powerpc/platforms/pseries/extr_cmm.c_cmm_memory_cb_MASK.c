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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  MEM_CANCEL_OFFLINE 133 
#define  MEM_CANCEL_ONLINE 132 
#define  MEM_GOING_OFFLINE 131 
#define  MEM_GOING_ONLINE 130 
#define  MEM_OFFLINE 129 
#define  MEM_ONLINE 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  hotplug_mutex ; 
 int hotplug_occurred ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *self,
			unsigned long action, void *arg)
{
	int ret = 0;

	switch (action) {
	case MEM_GOING_OFFLINE:
		FUNC2(&hotplug_mutex);
		hotplug_occurred = 1;
		ret = FUNC1(arg);
		break;
	case MEM_OFFLINE:
	case MEM_CANCEL_OFFLINE:
		FUNC3(&hotplug_mutex);
		FUNC0("Memory offline operation complete.\n");
		break;
	case MEM_GOING_ONLINE:
	case MEM_ONLINE:
	case MEM_CANCEL_ONLINE:
		break;
	}

	if (ret)
		ret = FUNC4(ret);
	else
		ret = NOTIFY_OK;

	return ret;
}