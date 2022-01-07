
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct p54u_priv {int fw; int fw_wait_load; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;


 int interface_to_usbdev (struct usb_interface*) ;
 int p54_free_common (struct ieee80211_hw*) ;
 int p54_unregister_common (struct ieee80211_hw*) ;
 int release_firmware (int ) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void p54u_disconnect(struct usb_interface *intf)
{
 struct ieee80211_hw *dev = usb_get_intfdata(intf);
 struct p54u_priv *priv;

 if (!dev)
  return;

 priv = dev->priv;
 wait_for_completion(&priv->fw_wait_load);
 p54_unregister_common(dev);

 usb_put_dev(interface_to_usbdev(intf));
 release_firmware(priv->fw);
 p54_free_common(dev);
}
