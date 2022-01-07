
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zd_usb {int is_zd1211b; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int driver_info; } ;
struct usb_device {int speed; } ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_4__ {struct zd_usb usb; } ;
struct TYPE_5__ {TYPE_1__ chip; } ;


 int DEVICE_INSTALLER ;
 int DEVICE_ZD1211B ;
 int ENODEV ;
 int ENOMEM ;



 int dev_dbg_f (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ) ;
 int eject_installer (struct usb_interface*) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int print_id (struct usb_device*) ;
 int usb_reset_device (struct usb_device*) ;
 int wiphy_name (int ) ;
 TYPE_2__* zd_hw_mac (struct ieee80211_hw*) ;
 struct ieee80211_hw* zd_mac_alloc_hw (struct usb_interface*) ;
 int zd_mac_clear (TYPE_2__*) ;
 int zd_mac_preinit_hw (struct ieee80211_hw*) ;

__attribute__((used)) static int probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 int r;
 struct usb_device *udev = interface_to_usbdev(intf);
 struct zd_usb *usb;
 struct ieee80211_hw *hw = ((void*)0);

 print_id(udev);

 if (id->driver_info & DEVICE_INSTALLER)
  return eject_installer(intf);

 switch (udev->speed) {
 case 128:
 case 130:
 case 129:
  break;
 default:
  dev_dbg_f(&intf->dev, "Unknown USB speed\n");
  r = -ENODEV;
  goto error;
 }

 r = usb_reset_device(udev);
 if (r) {
  dev_err(&intf->dev,
   "couldn't reset usb device. Error number %d\n", r);
  goto error;
 }

 hw = zd_mac_alloc_hw(intf);
 if (hw == ((void*)0)) {
  r = -ENOMEM;
  goto error;
 }

 usb = &zd_hw_mac(hw)->chip.usb;
 usb->is_zd1211b = (id->driver_info == DEVICE_ZD1211B) != 0;

 r = zd_mac_preinit_hw(hw);
 if (r) {
  dev_dbg_f(&intf->dev,
           "couldn't initialize mac. Error number %d\n", r);
  goto error;
 }

 r = ieee80211_register_hw(hw);
 if (r) {
  dev_dbg_f(&intf->dev,
    "couldn't register device. Error number %d\n", r);
  goto error;
 }

 dev_dbg_f(&intf->dev, "successful\n");
 dev_info(&intf->dev, "%s\n", wiphy_name(hw->wiphy));
 return 0;
error:
 usb_reset_device(interface_to_usbdev(intf));
 if (hw) {
  zd_mac_clear(zd_hw_mac(hw));
  ieee80211_free_hw(hw);
 }
 return r;
}
