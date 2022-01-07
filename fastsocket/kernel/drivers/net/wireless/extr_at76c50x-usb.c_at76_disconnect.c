
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct at76_priv {TYPE_1__* hw; } ;
struct TYPE_2__ {int wiphy; } ;


 int KERN_INFO ;
 int at76_delete_device (struct at76_priv*) ;
 int dev_printk (int ,int *,char*) ;
 struct at76_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wiphy_info (int ,char*) ;

__attribute__((used)) static void at76_disconnect(struct usb_interface *interface)
{
 struct at76_priv *priv;

 priv = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));


 if (!priv)
  return;

 wiphy_info(priv->hw->wiphy, "disconnecting\n");
 at76_delete_device(priv);
 dev_printk(KERN_INFO, &interface->dev, "disconnected\n");
}
