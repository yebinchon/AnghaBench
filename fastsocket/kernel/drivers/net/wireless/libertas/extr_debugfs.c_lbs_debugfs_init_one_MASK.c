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
struct net_device {char* name; } ;
struct lbs_private {void* regs_dir; void** debugfs_regs_files; void* debugfs_dir; void* events_dir; void** debugfs_events_files; void** debugfs_files; } ;
struct lbs_debugfs_files {int /*<<< orphan*/  fops; int /*<<< orphan*/  perm; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct lbs_debugfs_files*) ; 
 void* FUNC1 (char*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct lbs_private*,int /*<<< orphan*/ *) ; 
 struct lbs_debugfs_files* debugfs_events_files ; 
 struct lbs_debugfs_files* debugfs_files ; 
 struct lbs_debugfs_files* debugfs_regs_files ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 void* lbs_dir ; 

void FUNC4(struct lbs_private *priv, struct net_device *dev)
{
	int i;
	const struct lbs_debugfs_files *files;
	if (!lbs_dir)
		goto exit;

	priv->debugfs_dir = FUNC1(dev->name, lbs_dir);
	if (!priv->debugfs_dir)
		goto exit;

	for (i=0; i<FUNC0(debugfs_files); i++) {
		files = &debugfs_files[i];
		priv->debugfs_files[i] = FUNC2(files->name,
							     files->perm,
							     priv->debugfs_dir,
							     priv,
							     &files->fops);
	}

	priv->events_dir = FUNC1("subscribed_events", priv->debugfs_dir);
	if (!priv->events_dir)
		goto exit;

	for (i=0; i<FUNC0(debugfs_events_files); i++) {
		files = &debugfs_events_files[i];
		priv->debugfs_events_files[i] = FUNC2(files->name,
							     files->perm,
							     priv->events_dir,
							     priv,
							     &files->fops);
	}

	priv->regs_dir = FUNC1("registers", priv->debugfs_dir);
	if (!priv->regs_dir)
		goto exit;

	for (i=0; i<FUNC0(debugfs_regs_files); i++) {
		files = &debugfs_regs_files[i];
		priv->debugfs_regs_files[i] = FUNC2(files->name,
							     files->perm,
							     priv->regs_dir,
							     priv,
							     &files->fops);
	}

#ifdef PROC_DEBUG
	lbs_debug_init(priv);
#endif
exit:
	return;
}