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
struct btmrvl_debugfs_data {int /*<<< orphan*/  root_dir; int /*<<< orphan*/  status_dir; int /*<<< orphan*/  txdnldready; int /*<<< orphan*/  hsstate; int /*<<< orphan*/  psstate; int /*<<< orphan*/  curpsmode; int /*<<< orphan*/  config_dir; int /*<<< orphan*/  hscfgcmd; int /*<<< orphan*/  hscmd; int /*<<< orphan*/  hsmode; int /*<<< orphan*/  gpiogap; int /*<<< orphan*/  pscmd; int /*<<< orphan*/  psmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btmrvl_debugfs_data*) ; 

void FUNC2(struct hci_dev *hdev)
{
	struct btmrvl_private *priv = hdev->driver_data;
	struct btmrvl_debugfs_data *dbg = priv->debugfs_data;

	if (!dbg)
		return;

	FUNC0(dbg->psmode);
	FUNC0(dbg->pscmd);
	FUNC0(dbg->gpiogap);
	FUNC0(dbg->hsmode);
	FUNC0(dbg->hscmd);
	FUNC0(dbg->hscfgcmd);
	FUNC0(dbg->config_dir);

	FUNC0(dbg->curpsmode);
	FUNC0(dbg->psstate);
	FUNC0(dbg->hsstate);
	FUNC0(dbg->txdnldready);
	FUNC0(dbg->status_dir);

	FUNC0(dbg->root_dir);

	FUNC1(dbg);
}