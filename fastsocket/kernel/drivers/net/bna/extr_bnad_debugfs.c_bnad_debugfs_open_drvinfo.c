
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct bnad* i_private; } ;
struct file {struct bnad_debug_info* private_data; } ;
struct bnad_drvinfo {int dummy; } ;
struct bnad_debug_info {int buffer_len; struct bnad_debug_info* debug_buffer; } ;
struct bnad {int pcidev; int conf_mutex; } ;


 int BFA_STATUS_OK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bnad_get_debug_drvinfo (struct bnad*,struct bnad_debug_info*,int) ;
 int kfree (struct bnad_debug_info*) ;
 void* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_name (int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int
bnad_debugfs_open_drvinfo(struct inode *inode, struct file *file)
{
 struct bnad *bnad = inode->i_private;
 struct bnad_debug_info *drv_info;
 int rc;

 drv_info = kzalloc(sizeof(struct bnad_debug_info), GFP_KERNEL);
 if (!drv_info)
  return -ENOMEM;

 drv_info->buffer_len = sizeof(struct bnad_drvinfo);

 drv_info->debug_buffer = kzalloc(drv_info->buffer_len, GFP_KERNEL);
 if (!drv_info->debug_buffer) {
  kfree(drv_info);
  drv_info = ((void*)0);
  return -ENOMEM;
 }

 mutex_lock(&bnad->conf_mutex);
 rc = bnad_get_debug_drvinfo(bnad, drv_info->debug_buffer,
    drv_info->buffer_len);
 mutex_unlock(&bnad->conf_mutex);
 if (rc != BFA_STATUS_OK) {
  kfree(drv_info->debug_buffer);
  drv_info->debug_buffer = ((void*)0);
  kfree(drv_info);
  drv_info = ((void*)0);
  pr_warn("bna %s: Failed to collect drvinfo\n",
   pci_name(bnad->pcidev));
  return -ENOMEM;
 }

 file->private_data = drv_info;

 return 0;
}
