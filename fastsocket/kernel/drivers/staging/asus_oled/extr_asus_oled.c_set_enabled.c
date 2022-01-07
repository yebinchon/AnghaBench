
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_oled_dev {int dummy; } ;
typedef size_t ssize_t ;


 int enable_oled (struct asus_oled_dev*,int) ;
 int strict_strtoul (char const*,int,int *) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct asus_oled_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t set_enabled(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct asus_oled_dev *odev = usb_get_intfdata(intf);
 int temp = strict_strtoul(buf, 10, ((void*)0));

 enable_oled(odev, temp);

 return count;
}
