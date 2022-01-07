
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct imon_context {int display_isopen; int lock; int dev_present_intf0; int dev; int display_supported; } ;
struct file {struct imon_context* private_data; } ;


 int EIO ;
 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int free_imon_context (struct imon_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int display_close(struct inode *inode, struct file *file)
{
 struct imon_context *ictx = ((void*)0);
 int retval = 0;

 ictx = file->private_data;

 if (!ictx) {
  pr_err("no context for device\n");
  return -ENODEV;
 }

 mutex_lock(&ictx->lock);

 if (!ictx->display_supported) {
  pr_err("display not supported by device\n");
  retval = -ENODEV;
 } else if (!ictx->display_isopen) {
  pr_err("display is not open\n");
  retval = -EIO;
 } else {
  ictx->display_isopen = 0;
  dev_dbg(ictx->dev, "display port closed\n");
  if (!ictx->dev_present_intf0) {





   mutex_unlock(&ictx->lock);
   free_imon_context(ictx);
   return retval;
  }
 }

 mutex_unlock(&ictx->lock);
 return retval;
}
