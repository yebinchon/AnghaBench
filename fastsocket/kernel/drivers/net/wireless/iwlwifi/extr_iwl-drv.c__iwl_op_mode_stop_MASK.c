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
struct iwl_drv {int /*<<< orphan*/ * dbgfs_op_mode; int /*<<< orphan*/ * op_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iwl_drv *drv)
{
	/* op_mode can be NULL if its start failed */
	if (drv->op_mode) {
		FUNC1(drv->op_mode);
		drv->op_mode = NULL;

#ifdef CONFIG_IWLWIFI_DEBUGFS
		debugfs_remove_recursive(drv->dbgfs_op_mode);
		drv->dbgfs_op_mode = NULL;
#endif
	}
}