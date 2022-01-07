
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void
il_dbgfs_unregister(struct il_priv *il)
{
 if (!il->debugfs_dir)
  return;

 debugfs_remove_recursive(il->debugfs_dir);
 il->debugfs_dir = ((void*)0);
}
