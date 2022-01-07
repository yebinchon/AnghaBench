
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t show_name(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct platform_device *pdev = to_platform_device(dev);
 return sprintf(buf, "%s\n", pdev->name);
}
