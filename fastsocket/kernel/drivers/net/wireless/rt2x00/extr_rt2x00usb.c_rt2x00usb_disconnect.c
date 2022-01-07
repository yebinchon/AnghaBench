
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int rt2x00lib_remove_dev (struct rt2x00_dev*) ;
 int rt2x00usb_free_reg (struct rt2x00_dev*) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void rt2x00usb_disconnect(struct usb_interface *usb_intf)
{
 struct ieee80211_hw *hw = usb_get_intfdata(usb_intf);
 struct rt2x00_dev *rt2x00dev = hw->priv;




 rt2x00lib_remove_dev(rt2x00dev);
 rt2x00usb_free_reg(rt2x00dev);
 ieee80211_free_hw(hw);




 usb_set_intfdata(usb_intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(usb_intf));
}
