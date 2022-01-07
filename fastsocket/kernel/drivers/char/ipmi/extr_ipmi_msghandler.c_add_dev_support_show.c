
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int additional_device_support; } ;
struct bmc_device {TYPE_1__ id; } ;
typedef int ssize_t ;


 struct bmc_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t add_dev_support_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct bmc_device *bmc = dev_get_drvdata(dev);

 return snprintf(buf, 10, "0x%02x\n",
   bmc->id.additional_device_support);
}
