
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct driver_data {int * dfs_node; TYPE_1__* disk; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int disk_name; } ;


 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int S_IRUGO ;
 int * debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int ,int *,struct driver_data*,int *) ;
 int dev_warn (int *,char*,int ) ;
 int dfs_parent ;
 int mtip_flags_fops ;
 int mtip_regs_fops ;

__attribute__((used)) static int mtip_hw_debugfs_init(struct driver_data *dd)
{
 if (!dfs_parent)
  return -1;

 dd->dfs_node = debugfs_create_dir(dd->disk->disk_name, dfs_parent);
 if (IS_ERR_OR_NULL(dd->dfs_node)) {
  dev_warn(&dd->pdev->dev,
   "Error creating node %s under debugfs\n",
      dd->disk->disk_name);
  dd->dfs_node = ((void*)0);
  return -1;
 }

 debugfs_create_file("flags", S_IRUGO, dd->dfs_node, dd,
       &mtip_flags_fops);
 debugfs_create_file("registers", S_IRUGO, dd->dfs_node, dd,
       &mtip_regs_fops);

 return 0;
}
