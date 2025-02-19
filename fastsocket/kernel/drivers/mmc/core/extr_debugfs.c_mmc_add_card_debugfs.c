
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int debugfs_root; } ;
struct mmc_card {int dev; struct dentry* debugfs_root; int state; struct mmc_host* host; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IRUSR ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct mmc_card*,int *) ;
 int debugfs_create_x32 (char*,int ,struct dentry*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int dev_err (int *,char*) ;
 int mmc_card_id (struct mmc_card*) ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 scalar_t__ mmc_card_sd (struct mmc_card*) ;
 int mmc_dbg_card_status_fops ;
 int mmc_dbg_ext_csd_fops ;

void mmc_add_card_debugfs(struct mmc_card *card)
{
 struct mmc_host *host = card->host;
 struct dentry *root;

 if (!host->debugfs_root)
  return;

 root = debugfs_create_dir(mmc_card_id(card), host->debugfs_root);
 if (IS_ERR(root))

  return;
 if (!root)


  goto err;

 card->debugfs_root = root;

 if (!debugfs_create_x32("state", S_IRUSR, root, &card->state))
  goto err;

 if (mmc_card_mmc(card) || mmc_card_sd(card))
  if (!debugfs_create_file("status", S_IRUSR, root, card,
     &mmc_dbg_card_status_fops))
   goto err;

 if (mmc_card_mmc(card))
  if (!debugfs_create_file("ext_csd", S_IRUSR, root, card,
     &mmc_dbg_ext_csd_fops))
   goto err;

 return;

err:
 debugfs_remove_recursive(root);
 card->debugfs_root = ((void*)0);
 dev_err(&card->dev, "failed to initialize debugfs\n");
}
