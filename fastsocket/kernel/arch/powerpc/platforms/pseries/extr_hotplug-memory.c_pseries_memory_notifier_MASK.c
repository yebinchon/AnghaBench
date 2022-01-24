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
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
#define  PSERIES_DRCONF_MEM_ADD 131 
#define  PSERIES_DRCONF_MEM_REMOVE 130 
#define  PSERIES_RECONFIG_ADD 129 
#define  PSERIES_RECONFIG_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
				unsigned long action, void *node)
{
	int err = NOTIFY_OK;

	switch (action) {
	case PSERIES_RECONFIG_ADD:
		if (FUNC0(node))
			err = NOTIFY_BAD;
		break;
	case PSERIES_RECONFIG_REMOVE:
		if (FUNC2(node))
			err = NOTIFY_BAD;
		break;
	case PSERIES_DRCONF_MEM_ADD:
	case PSERIES_DRCONF_MEM_REMOVE:
		if (FUNC1(node, action))
			err = NOTIFY_BAD;
		break;
	default:
		err = NOTIFY_DONE;
		break;
	}
	return err;
}