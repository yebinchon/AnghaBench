
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ati_remote2 {int mode_mask; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_device* to_usb_device (struct device*) ;
 struct ati_remote2* usb_get_intfdata (struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int ) ;

__attribute__((used)) static ssize_t ati_remote2_show_mode_mask(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct usb_device *udev = to_usb_device(dev);
 struct usb_interface *intf = usb_ifnum_to_if(udev, 0);
 struct ati_remote2 *ar2 = usb_get_intfdata(intf);

 return sprintf(buf, "0x%02x\n", ar2->mode_mask);
}
