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
struct ixgbe_adapter {scalar_t__ ixgbe_dbg_adapter; int /*<<< orphan*/  pdev; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (char*,int,scalar_t__,struct ixgbe_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  ixgbe_dbg_netdev_ops_fops ; 
 int /*<<< orphan*/  ixgbe_dbg_reg_ops_fops ; 
 int /*<<< orphan*/  ixgbe_dbg_root ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ixgbe_adapter *adapter)
{
	const char *name = FUNC3(adapter->pdev);
	struct dentry *pfile;
	adapter->ixgbe_dbg_adapter = FUNC0(name, ixgbe_dbg_root);
	if (adapter->ixgbe_dbg_adapter) {
		pfile = FUNC1("reg_ops", 0600,
					    adapter->ixgbe_dbg_adapter, adapter,
					    &ixgbe_dbg_reg_ops_fops);
		if (!pfile)
			FUNC2("debugfs reg_ops for %s failed\n", name);
		pfile = FUNC1("netdev_ops", 0600,
					    adapter->ixgbe_dbg_adapter, adapter,
					    &ixgbe_dbg_netdev_ops_fops);
		if (!pfile)
			FUNC2("debugfs netdev_ops for %s failed\n", name);
	} else {
		FUNC2("debugfs entry for %s failed\n", name);
	}
}