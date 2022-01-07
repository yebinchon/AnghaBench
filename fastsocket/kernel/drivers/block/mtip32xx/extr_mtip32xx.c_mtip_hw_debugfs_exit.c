
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int dfs_node; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void mtip_hw_debugfs_exit(struct driver_data *dd)
{
 debugfs_remove_recursive(dd->dfs_node);
}
