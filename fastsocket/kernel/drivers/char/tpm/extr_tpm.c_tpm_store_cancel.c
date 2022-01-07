
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cancel ) (struct tpm_chip*) ;} ;
struct tpm_chip {TYPE_1__ vendor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct tpm_chip* dev_get_drvdata (struct device*) ;
 int stub1 (struct tpm_chip*) ;

ssize_t tpm_store_cancel(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);
 if (chip == ((void*)0))
  return 0;

 chip->vendor.cancel(chip);
 return count;
}
