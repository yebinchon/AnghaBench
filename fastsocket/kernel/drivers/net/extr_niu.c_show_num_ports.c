
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct niu_parent* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct niu_parent {int num_ports; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t show_num_ports(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct platform_device *plat_dev = to_platform_device(dev);
 struct niu_parent *p = plat_dev->dev.platform_data;

 return sprintf(buf, "%d\n", p->num_ports);
}
