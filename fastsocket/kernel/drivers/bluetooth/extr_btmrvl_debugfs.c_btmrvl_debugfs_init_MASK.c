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
struct hci_dev {struct btmrvl_private* driver_data; } ;
struct btmrvl_private {struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {void* status_dir; void* txdnldready; void* hsstate; void* psstate; void* curpsmode; int /*<<< orphan*/ * root_dir; void* config_dir; void* hscfgcmd; void* hscmd; void* hsmode; void* gpiogap; void* pscmd; void* psmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  btmrvl_curpsmode_fops ; 
 int /*<<< orphan*/  btmrvl_gpiogap_fops ; 
 int /*<<< orphan*/  btmrvl_hscfgcmd_fops ; 
 int /*<<< orphan*/  btmrvl_hscmd_fops ; 
 int /*<<< orphan*/  btmrvl_hsmode_fops ; 
 int /*<<< orphan*/  btmrvl_hsstate_fops ; 
 int /*<<< orphan*/  btmrvl_pscmd_fops ; 
 int /*<<< orphan*/  btmrvl_psmode_fops ; 
 int /*<<< orphan*/  btmrvl_psstate_fops ; 
 int /*<<< orphan*/  btmrvl_txdnldready_fops ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*,int,void*,struct btmrvl_private*,int /*<<< orphan*/ *) ; 
 struct btmrvl_debugfs_data* FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(struct hci_dev *hdev)
{
	struct btmrvl_private *priv = hdev->driver_data;
	struct btmrvl_debugfs_data *dbg;

	dbg = FUNC3(sizeof(*dbg), GFP_KERNEL);
	priv->debugfs_data = dbg;

	if (!dbg) {
		FUNC0("Can not allocate memory for btmrvl_debugfs_data.");
		return;
	}

	dbg->root_dir = FUNC1("btmrvl", NULL);

	dbg->config_dir = FUNC1("config", dbg->root_dir);

	dbg->psmode = FUNC2("psmode", 0644, dbg->config_dir,
				hdev->driver_data, &btmrvl_psmode_fops);
	dbg->pscmd = FUNC2("pscmd", 0644, dbg->config_dir,
				hdev->driver_data, &btmrvl_pscmd_fops);
	dbg->gpiogap = FUNC2("gpiogap", 0644, dbg->config_dir,
				hdev->driver_data, &btmrvl_gpiogap_fops);
	dbg->hsmode =  FUNC2("hsmode", 0644, dbg->config_dir,
				hdev->driver_data, &btmrvl_hsmode_fops);
	dbg->hscmd = FUNC2("hscmd", 0644, dbg->config_dir,
				hdev->driver_data, &btmrvl_hscmd_fops);
	dbg->hscfgcmd = FUNC2("hscfgcmd", 0644, dbg->config_dir,
				hdev->driver_data, &btmrvl_hscfgcmd_fops);

	dbg->status_dir = FUNC1("status", dbg->root_dir);
	dbg->curpsmode = FUNC2("curpsmode", 0444,
						dbg->status_dir,
						hdev->driver_data,
						&btmrvl_curpsmode_fops);
	dbg->psstate = FUNC2("psstate", 0444, dbg->status_dir,
				hdev->driver_data, &btmrvl_psstate_fops);
	dbg->hsstate = FUNC2("hsstate", 0444, dbg->status_dir,
				hdev->driver_data, &btmrvl_hsstate_fops);
	dbg->txdnldready = FUNC2("txdnldready", 0444,
						dbg->status_dir,
						hdev->driver_data,
						&btmrvl_txdnldready_fops);
}