
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct usb_ov511* cd_to_ov (struct device*) ;
 int sensor_get_saturation (struct usb_ov511*,unsigned short*) ;
 int sprintf (char*,char*,unsigned short) ;

__attribute__((used)) static ssize_t show_saturation(struct device *cd,
          struct device_attribute *attr, char *buf)
{
 struct usb_ov511 *ov = cd_to_ov(cd);
 unsigned short x;

 if (!ov->dev)
  return -ENODEV;
 sensor_get_saturation(ov, &x);
 return sprintf(buf, "%d\n", x >> 8);
}
