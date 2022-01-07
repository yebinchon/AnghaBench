
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
 int sensor_get_exposure (struct usb_ov511*,unsigned char*) ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static ssize_t show_exposure(struct device *cd,
        struct device_attribute *attr, char *buf)
{
 struct usb_ov511 *ov = cd_to_ov(cd);
 unsigned char exp = 0;

 if (!ov->dev)
  return -ENODEV;
 sensor_get_exposure(ov, &exp);
 return sprintf(buf, "%d\n", exp);
}
