
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BASE_CLOCK ;
 int BUG () ;
 struct device_attribute dev_attr_ref_clock ;
 struct device_attribute dev_attr_usb_clock ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_value(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 int x;

 if (devattr == &dev_attr_usb_clock)
  x = 48000;
 else if (devattr == &dev_attr_ref_clock)
  x = BASE_CLOCK;
 else
  BUG();

 return sprintf(buf, "%d\n", x);
}
