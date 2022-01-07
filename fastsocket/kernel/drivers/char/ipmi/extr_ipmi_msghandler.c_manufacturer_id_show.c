
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int manufacturer_id; } ;
struct bmc_device {TYPE_1__ id; } ;
typedef int ssize_t ;


 struct bmc_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t manufacturer_id_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct bmc_device *bmc = dev_get_drvdata(dev);

 return snprintf(buf, 20, "0x%6.6x\n", bmc->id.manufacturer_id);
}
