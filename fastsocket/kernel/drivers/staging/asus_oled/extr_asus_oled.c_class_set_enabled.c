
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_oled_dev {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ dev_get_drvdata (struct device*) ;
 int enable_oled (struct asus_oled_dev*,int) ;
 int strict_strtoul (char const*,int,int *) ;

__attribute__((used)) static ssize_t class_set_enabled(struct device *device,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct asus_oled_dev *odev =
  (struct asus_oled_dev *) dev_get_drvdata(device);

 int temp = strict_strtoul(buf, 10, ((void*)0));

 enable_oled(odev, temp);

 return count;
}
