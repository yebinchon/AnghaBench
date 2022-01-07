
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {char* type; } ;
struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct device {TYPE_1__ archdata; } ;
typedef int ssize_t ;


 int ENODEV ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int sprintf (char*,char*,char*,char const*) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 const struct vio_dev *vio_dev = to_vio_dev(dev);
 struct device_node *dn;
 const char *cp;

 dn = dev->archdata.of_node;
 if (!dn)
  return -ENODEV;
 cp = of_get_property(dn, "compatible", ((void*)0));
 if (!cp)
  return -ENODEV;

 return sprintf(buf, "vio:T%sS%s\n", vio_dev->type, cp);
}
