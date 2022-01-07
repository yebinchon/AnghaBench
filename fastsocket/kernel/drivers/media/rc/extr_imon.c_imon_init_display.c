
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct imon_context {scalar_t__ display_type; int dev; } ;


 scalar_t__ IMON_DISPLAY_TYPE_LCD ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int imon_display_attr_group ;
 int imon_lcd_class ;
 int imon_vfd_class ;
 int sysfs_create_group (int *,int *) ;
 int usb_register_dev (struct usb_interface*,int *) ;

__attribute__((used)) static void imon_init_display(struct imon_context *ictx,
         struct usb_interface *intf)
{
 int ret;

 dev_dbg(ictx->dev, "Registering iMON display with sysfs\n");


 ret = sysfs_create_group(&intf->dev.kobj, &imon_display_attr_group);
 if (ret)
  dev_err(ictx->dev, "Could not create display sysfs "
   "entries(%d)", ret);

 if (ictx->display_type == IMON_DISPLAY_TYPE_LCD)
  ret = usb_register_dev(intf, &imon_lcd_class);
 else
  ret = usb_register_dev(intf, &imon_vfd_class);
 if (ret)

  dev_info(ictx->dev, "could not get a minor number for "
    "display\n");

}
