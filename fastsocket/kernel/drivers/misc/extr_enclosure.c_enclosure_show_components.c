
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int components; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,int) ;
 struct enclosure_device* to_enclosure_device (struct device*) ;

__attribute__((used)) static ssize_t enclosure_show_components(struct device *cdev,
      struct device_attribute *attr,
      char *buf)
{
 struct enclosure_device *edev = to_enclosure_device(cdev);

 return snprintf(buf, 40, "%d\n", edev->components);
}
