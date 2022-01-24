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
struct iwl_trans {void* dbgfs_drv; void* dbgfs_dir; struct iwl_trans* trans; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; int /*<<< orphan*/  request_firmware_complete; struct iwl_cfg const* cfg; } ;
struct iwl_drv {void* dbgfs_drv; void* dbgfs_dir; struct iwl_drv* trans; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; int /*<<< orphan*/  request_firmware_complete; struct iwl_cfg const* cfg; } ;
struct iwl_cfg {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iwl_trans* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*) ; 
 void* FUNC3 (char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* iwl_dbgfs_root ; 
 int FUNC7 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 struct iwl_trans* FUNC9 (int,int /*<<< orphan*/ ) ; 

struct iwl_drv *FUNC10(struct iwl_trans *trans,
			      const struct iwl_cfg *cfg)
{
	struct iwl_drv *drv;
	int ret;

	drv = FUNC9(sizeof(*drv), GFP_KERNEL);
	if (!drv)
		return NULL;

	drv->trans = trans;
	drv->dev = trans->dev;
	drv->cfg = cfg;

	FUNC6(&drv->request_firmware_complete);
	FUNC1(&drv->list);

#ifdef CONFIG_IWLWIFI_DEBUGFS
	/* Create the device debugfs entries. */
	drv->dbgfs_drv = debugfs_create_dir(dev_name(trans->dev),
					    iwl_dbgfs_root);

	if (!drv->dbgfs_drv) {
		IWL_ERR(drv, "failed to create debugfs directory\n");
		ret = -ENOMEM;
		goto err_free_drv;
	}

	/* Create transport layer debugfs dir */
	drv->trans->dbgfs_dir = debugfs_create_dir("trans", drv->dbgfs_drv);

	if (!drv->trans->dbgfs_dir) {
		IWL_ERR(drv, "failed to create transport debugfs directory\n");
		ret = -ENOMEM;
		goto err_free_dbgfs;
	}
#endif

	ret = FUNC7(drv, true);
	if (ret) {
		FUNC2(trans, "Couldn't request the fw\n");
		goto err_fw;
	}

	return drv;

err_fw:
#ifdef CONFIG_IWLWIFI_DEBUGFS
err_free_dbgfs:
	debugfs_remove_recursive(drv->dbgfs_drv);
err_free_drv:
#endif
	FUNC8(drv);

	return FUNC0(ret);
}