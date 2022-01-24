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
struct rsxx_cardinfo {struct dentry* debugfs_dir; TYPE_1__* gendisk; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  debugfs_cram_fops ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (char*,int,struct dentry*,struct rsxx_cardinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debugfs_pci_regs_fops ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  debugfs_stats_fops ; 

__attribute__((used)) static void FUNC4(struct rsxx_cardinfo *card)
{
	struct dentry *debugfs_stats;
	struct dentry *debugfs_pci_regs;
	struct dentry *debugfs_cram;

	card->debugfs_dir = FUNC1(card->gendisk->disk_name, NULL);
	if (FUNC0(card->debugfs_dir))
		goto failed_debugfs_dir;

	debugfs_stats = FUNC2("stats", S_IRUGO,
					    card->debugfs_dir, card,
					    &debugfs_stats_fops);
	if (FUNC0(debugfs_stats))
		goto failed_debugfs_stats;

	debugfs_pci_regs = FUNC2("pci_regs", S_IRUGO,
					       card->debugfs_dir, card,
					       &debugfs_pci_regs_fops);
	if (FUNC0(debugfs_pci_regs))
		goto failed_debugfs_pci_regs;

	debugfs_cram = FUNC2("cram", S_IRUGO | S_IWUSR,
					   card->debugfs_dir, card,
					   &debugfs_cram_fops);
	if (FUNC0(debugfs_cram))
		goto failed_debugfs_cram;

	return;
failed_debugfs_cram:
	FUNC3(debugfs_pci_regs);
failed_debugfs_pci_regs:
	FUNC3(debugfs_stats);
failed_debugfs_stats:
	FUNC3(card->debugfs_dir);
failed_debugfs_dir:
	card->debugfs_dir = NULL;
}