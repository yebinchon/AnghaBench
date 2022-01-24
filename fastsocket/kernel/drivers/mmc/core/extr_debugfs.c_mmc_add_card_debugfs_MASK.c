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
struct mmc_host {int /*<<< orphan*/  debugfs_root; } ;
struct mmc_card {int /*<<< orphan*/  dev; struct dentry* debugfs_root; int /*<<< orphan*/  state; struct mmc_host* host; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUSR ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*,struct mmc_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_card*) ; 
 scalar_t__ FUNC7 (struct mmc_card*) ; 
 scalar_t__ FUNC8 (struct mmc_card*) ; 
 int /*<<< orphan*/  mmc_dbg_card_status_fops ; 
 int /*<<< orphan*/  mmc_dbg_ext_csd_fops ; 

void FUNC9(struct mmc_card *card)
{
	struct mmc_host	*host = card->host;
	struct dentry	*root;

	if (!host->debugfs_root)
		return;

	root = FUNC1(FUNC6(card), host->debugfs_root);
	if (FUNC0(root))
		/* Don't complain -- debugfs just isn't enabled */
		return;
	if (!root)
		/* Complain -- debugfs is enabled, but it failed to
		 * create the directory. */
		goto err;

	card->debugfs_root = root;

	if (!FUNC3("state", S_IRUSR, root, &card->state))
		goto err;

	if (FUNC7(card) || FUNC8(card))
		if (!FUNC2("status", S_IRUSR, root, card,
					&mmc_dbg_card_status_fops))
			goto err;

	if (FUNC7(card))
		if (!FUNC2("ext_csd", S_IRUSR, root, card,
					&mmc_dbg_ext_csd_fops))
			goto err;

	return;

err:
	FUNC4(root);
	card->debugfs_root = NULL;
	FUNC5(&card->dev, "failed to initialize debugfs\n");
}