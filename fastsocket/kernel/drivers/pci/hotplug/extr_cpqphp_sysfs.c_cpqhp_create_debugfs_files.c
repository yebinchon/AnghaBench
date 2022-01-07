
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {TYPE_1__* pci_dev; int dentry; } ;
struct TYPE_2__ {int dev; } ;


 int S_IRUGO ;
 int debug_ops ;
 int debugfs_create_file (int ,int ,int ,struct controller*,int *) ;
 int dev_name (int *) ;
 int root ;

void cpqhp_create_debugfs_files(struct controller *ctrl)
{
 ctrl->dentry = debugfs_create_file(dev_name(&ctrl->pci_dev->dev),
        S_IRUGO, root, ctrl, &debug_ops);
}
