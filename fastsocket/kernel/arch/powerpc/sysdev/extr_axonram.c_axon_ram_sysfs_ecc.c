
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct axon_ram_bank* platform_data; } ;
struct of_device {TYPE_1__ dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct axon_ram_bank {int ecc_counter; } ;
typedef int ssize_t ;


 int BUG_ON (int) ;
 int sprintf (char*,char*,int ) ;
 struct of_device* to_of_device (struct device*) ;

__attribute__((used)) static ssize_t
axon_ram_sysfs_ecc(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct of_device *device = to_of_device(dev);
 struct axon_ram_bank *bank = device->dev.platform_data;

 BUG_ON(!bank);

 return sprintf(buf, "%ld\n", bank->ecc_counter);
}
