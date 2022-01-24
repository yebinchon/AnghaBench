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
struct dentry {int dummy; } ;
struct brcms_pub {struct dentry* dbgfs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  brcms_debugfs_hardware_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,struct brcms_pub*,int /*<<< orphan*/ *) ; 

void FUNC2(struct brcms_pub *drvr)
{
	struct dentry *dentry = drvr->dbgfs_dir;

	if (!FUNC0(dentry))
		FUNC1("hardware", S_IRUGO, dentry,
				    drvr, &brcms_debugfs_hardware_ops);
}