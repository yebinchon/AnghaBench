
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int debugfs_dir; int * debugfs_files; int debugfs_debug; int events_dir; int * debugfs_events_files; int regs_dir; int * debugfs_regs_files; } ;


 int ARRAY_SIZE (int ) ;
 int debugfs_events_files ;
 int debugfs_files ;
 int debugfs_regs_files ;
 int debugfs_remove (int ) ;

void lbs_debugfs_remove_one(struct lbs_private *priv)
{
 int i;

 for(i=0; i<ARRAY_SIZE(debugfs_regs_files); i++)
  debugfs_remove(priv->debugfs_regs_files[i]);

 debugfs_remove(priv->regs_dir);

 for(i=0; i<ARRAY_SIZE(debugfs_events_files); i++)
  debugfs_remove(priv->debugfs_events_files[i]);

 debugfs_remove(priv->events_dir);



 for(i=0; i<ARRAY_SIZE(debugfs_files); i++)
  debugfs_remove(priv->debugfs_files[i]);
 debugfs_remove(priv->debugfs_dir);
}
