
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct lbs_private {int surpriseremoved; TYPE_1__* dev; } ;
struct if_usb_card {int surprise_removed; scalar_t__ priv; } ;
struct TYPE_2__ {int dev; } ;


 int LBS_DEB_MAIN ;
 int dev_attr_lbs_flash_boot2 ;
 int dev_attr_lbs_flash_fw ;
 int device_remove_file (int *,int *) ;
 int if_usb_free (struct if_usb_card*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_remove_card (struct lbs_private*) ;
 int lbs_stop_card (struct lbs_private*) ;
 struct if_usb_card* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void if_usb_disconnect(struct usb_interface *intf)
{
 struct if_usb_card *cardp = usb_get_intfdata(intf);
 struct lbs_private *priv = (struct lbs_private *) cardp->priv;

 lbs_deb_enter(LBS_DEB_MAIN);

 device_remove_file(&priv->dev->dev, &dev_attr_lbs_flash_boot2);
 device_remove_file(&priv->dev->dev, &dev_attr_lbs_flash_fw);

 cardp->surprise_removed = 1;

 if (priv) {
  priv->surpriseremoved = 1;
  lbs_stop_card(priv);
  lbs_remove_card(priv);
 }


 if_usb_free(cardp);

 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(intf));

 lbs_deb_leave(LBS_DEB_MAIN);
}
