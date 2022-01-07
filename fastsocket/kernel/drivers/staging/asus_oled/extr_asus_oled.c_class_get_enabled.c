
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_oled_dev {int enabled; } ;
typedef int ssize_t ;


 scalar_t__ dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t class_get_enabled(struct device *device,
     struct device_attribute *attr, char *buf)
{
 struct asus_oled_dev *odev =
  (struct asus_oled_dev *) dev_get_drvdata(device);

 return sprintf(buf, "%d\n", odev->enabled);
}
