
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int ixgbe_dbg_root ;

void ixgbe_dbg_exit(void)
{
 debugfs_remove_recursive(ixgbe_dbg_root);
}
