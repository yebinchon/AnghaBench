
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int odev_set_picture (int ,char const*,size_t) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t set_picture(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);

 return odev_set_picture(usb_get_intfdata(intf), buf, count);
}
