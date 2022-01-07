
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {struct btmrvl_private* driver_data; } ;
struct btmrvl_private {struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {int root_dir; int status_dir; int txdnldready; int hsstate; int psstate; int curpsmode; int config_dir; int hscfgcmd; int hscmd; int hsmode; int gpiogap; int pscmd; int psmode; } ;


 int debugfs_remove (int ) ;
 int kfree (struct btmrvl_debugfs_data*) ;

void btmrvl_debugfs_remove(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hdev->driver_data;
 struct btmrvl_debugfs_data *dbg = priv->debugfs_data;

 if (!dbg)
  return;

 debugfs_remove(dbg->psmode);
 debugfs_remove(dbg->pscmd);
 debugfs_remove(dbg->gpiogap);
 debugfs_remove(dbg->hsmode);
 debugfs_remove(dbg->hscmd);
 debugfs_remove(dbg->hscfgcmd);
 debugfs_remove(dbg->config_dir);

 debugfs_remove(dbg->curpsmode);
 debugfs_remove(dbg->psstate);
 debugfs_remove(dbg->hsstate);
 debugfs_remove(dbg->txdnldready);
 debugfs_remove(dbg->status_dir);

 debugfs_remove(dbg->root_dir);

 kfree(dbg);
}
