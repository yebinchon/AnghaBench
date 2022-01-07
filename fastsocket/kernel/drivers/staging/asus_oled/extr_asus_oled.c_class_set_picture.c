
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_oled_dev {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ dev_get_drvdata (struct device*) ;
 int odev_set_picture (struct asus_oled_dev*,char const*,size_t) ;

__attribute__((used)) static ssize_t class_set_picture(struct device *device,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 return odev_set_picture((struct asus_oled_dev *)
    dev_get_drvdata(device), buf, count);
}
