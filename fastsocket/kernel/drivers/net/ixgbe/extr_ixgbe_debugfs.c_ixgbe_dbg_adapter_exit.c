
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int * ixgbe_dbg_adapter; } ;


 int debugfs_remove_recursive (int *) ;

void ixgbe_dbg_adapter_exit(struct ixgbe_adapter *adapter)
{
 if (adapter->ixgbe_dbg_adapter)
  debugfs_remove_recursive(adapter->ixgbe_dbg_adapter);
 adapter->ixgbe_dbg_adapter = ((void*)0);
}
