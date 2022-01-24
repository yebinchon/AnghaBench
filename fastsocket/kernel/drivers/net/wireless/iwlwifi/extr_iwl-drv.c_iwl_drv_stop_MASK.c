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
struct iwl_drv {int /*<<< orphan*/  dbgfs_drv; int /*<<< orphan*/  list; int /*<<< orphan*/  request_firmware_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_drv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_drv*) ; 
 int /*<<< orphan*/  iwlwifi_opmode_table_mtx ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_drv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct iwl_drv *drv)
{
	FUNC8(&drv->request_firmware_complete);

	FUNC0(drv);

	FUNC2(drv);

	FUNC6(&iwlwifi_opmode_table_mtx);
	/*
	 * List is empty (this item wasn't added)
	 * when firmware loading failed -- in that
	 * case we can't remove it from any list.
	 */
	if (!FUNC5(&drv->list))
		FUNC4(&drv->list);
	FUNC7(&iwlwifi_opmode_table_mtx);

#ifdef CONFIG_IWLWIFI_DEBUGFS
	debugfs_remove_recursive(drv->dbgfs_drv);
#endif

	FUNC3(drv);
}