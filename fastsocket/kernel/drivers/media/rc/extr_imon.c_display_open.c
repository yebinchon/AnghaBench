
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct imon_context {int display_isopen; int lock; int dev; int display_supported; } ;
struct file {struct imon_context* private_data; } ;


 int EBUSY ;
 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int driver_lock ;
 int iminor (struct inode*) ;
 int imon_driver ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 struct usb_interface* usb_find_interface (int *,int) ;
 struct imon_context* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int display_open(struct inode *inode, struct file *file)
{
 struct usb_interface *interface;
 struct imon_context *ictx = ((void*)0);
 int subminor;
 int retval = 0;


 mutex_lock(&driver_lock);

 subminor = iminor(inode);
 interface = usb_find_interface(&imon_driver, subminor);
 if (!interface) {
  pr_err("could not find interface for minor %d\n", subminor);
  retval = -ENODEV;
  goto exit;
 }
 ictx = usb_get_intfdata(interface);

 if (!ictx) {
  pr_err("no context found for minor %d\n", subminor);
  retval = -ENODEV;
  goto exit;
 }

 mutex_lock(&ictx->lock);

 if (!ictx->display_supported) {
  pr_err("display not supported by device\n");
  retval = -ENODEV;
 } else if (ictx->display_isopen) {
  pr_err("display port is already open\n");
  retval = -EBUSY;
 } else {
  ictx->display_isopen = 1;
  file->private_data = ictx;
  dev_dbg(ictx->dev, "display port opened\n");
 }

 mutex_unlock(&ictx->lock);

exit:
 mutex_unlock(&driver_lock);
 return retval;
}
