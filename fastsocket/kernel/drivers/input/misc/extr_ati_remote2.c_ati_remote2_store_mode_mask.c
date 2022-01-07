
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ati_remote2 {unsigned long mode_mask; } ;
typedef size_t ssize_t ;


 unsigned long ATI_REMOTE2_MAX_MODE_MASK ;
 size_t EINVAL ;
 scalar_t__ strict_strtoul (char const*,int ,unsigned long*) ;
 struct usb_device* to_usb_device (struct device*) ;
 struct ati_remote2* usb_get_intfdata (struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int ) ;

__attribute__((used)) static ssize_t ati_remote2_store_mode_mask(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct usb_device *udev = to_usb_device(dev);
 struct usb_interface *intf = usb_ifnum_to_if(udev, 0);
 struct ati_remote2 *ar2 = usb_get_intfdata(intf);
 unsigned long mask;

 if (strict_strtoul(buf, 0, &mask))
  return -EINVAL;

 if (mask & ~ATI_REMOTE2_MAX_MODE_MASK)
  return -EINVAL;

 ar2->mode_mask = mask;

 return count;
}
