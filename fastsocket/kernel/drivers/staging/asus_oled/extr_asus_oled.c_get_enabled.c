
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_oled_dev {int enabled; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct asus_oled_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t get_enabled(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct asus_oled_dev *odev = usb_get_intfdata(intf);

 return sprintf(buf, "%d\n", odev->enabled);
}
