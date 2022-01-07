
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_device {TYPE_1__* ib_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int ENODEV ;
 struct ib_uverbs_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_ibdev(struct device *device, struct device_attribute *attr,
     char *buf)
{
 struct ib_uverbs_device *dev = dev_get_drvdata(device);

 if (!dev)
  return -ENODEV;

 return sprintf(buf, "%s\n", dev->ib_dev->name);
}
