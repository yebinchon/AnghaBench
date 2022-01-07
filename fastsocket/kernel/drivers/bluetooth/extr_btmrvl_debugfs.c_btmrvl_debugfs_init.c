
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {struct btmrvl_private* driver_data; } ;
struct btmrvl_private {struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {void* status_dir; void* txdnldready; void* hsstate; void* psstate; void* curpsmode; int * root_dir; void* config_dir; void* hscfgcmd; void* hscmd; void* hsmode; void* gpiogap; void* pscmd; void* psmode; } ;


 int BT_ERR (char*) ;
 int GFP_KERNEL ;
 int btmrvl_curpsmode_fops ;
 int btmrvl_gpiogap_fops ;
 int btmrvl_hscfgcmd_fops ;
 int btmrvl_hscmd_fops ;
 int btmrvl_hsmode_fops ;
 int btmrvl_hsstate_fops ;
 int btmrvl_pscmd_fops ;
 int btmrvl_psmode_fops ;
 int btmrvl_psstate_fops ;
 int btmrvl_txdnldready_fops ;
 void* debugfs_create_dir (char*,int *) ;
 void* debugfs_create_file (char*,int,void*,struct btmrvl_private*,int *) ;
 struct btmrvl_debugfs_data* kzalloc (int,int ) ;

void btmrvl_debugfs_init(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hdev->driver_data;
 struct btmrvl_debugfs_data *dbg;

 dbg = kzalloc(sizeof(*dbg), GFP_KERNEL);
 priv->debugfs_data = dbg;

 if (!dbg) {
  BT_ERR("Can not allocate memory for btmrvl_debugfs_data.");
  return;
 }

 dbg->root_dir = debugfs_create_dir("btmrvl", ((void*)0));

 dbg->config_dir = debugfs_create_dir("config", dbg->root_dir);

 dbg->psmode = debugfs_create_file("psmode", 0644, dbg->config_dir,
    hdev->driver_data, &btmrvl_psmode_fops);
 dbg->pscmd = debugfs_create_file("pscmd", 0644, dbg->config_dir,
    hdev->driver_data, &btmrvl_pscmd_fops);
 dbg->gpiogap = debugfs_create_file("gpiogap", 0644, dbg->config_dir,
    hdev->driver_data, &btmrvl_gpiogap_fops);
 dbg->hsmode = debugfs_create_file("hsmode", 0644, dbg->config_dir,
    hdev->driver_data, &btmrvl_hsmode_fops);
 dbg->hscmd = debugfs_create_file("hscmd", 0644, dbg->config_dir,
    hdev->driver_data, &btmrvl_hscmd_fops);
 dbg->hscfgcmd = debugfs_create_file("hscfgcmd", 0644, dbg->config_dir,
    hdev->driver_data, &btmrvl_hscfgcmd_fops);

 dbg->status_dir = debugfs_create_dir("status", dbg->root_dir);
 dbg->curpsmode = debugfs_create_file("curpsmode", 0444,
      dbg->status_dir,
      hdev->driver_data,
      &btmrvl_curpsmode_fops);
 dbg->psstate = debugfs_create_file("psstate", 0444, dbg->status_dir,
    hdev->driver_data, &btmrvl_psstate_fops);
 dbg->hsstate = debugfs_create_file("hsstate", 0444, dbg->status_dir,
    hdev->driver_data, &btmrvl_hsstate_fops);
 dbg->txdnldready = debugfs_create_file("txdnldready", 0444,
      dbg->status_dir,
      hdev->driver_data,
      &btmrvl_txdnldready_fops);
}
