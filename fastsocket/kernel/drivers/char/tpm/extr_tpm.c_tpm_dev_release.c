
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int (* release ) (struct device*) ;} ;
struct device {int dummy; } ;


 struct tpm_chip* dev_get_drvdata (struct device*) ;
 int kfree (struct tpm_chip*) ;
 int stub1 (struct device*) ;
 int tpm_dev_vendor_release (struct tpm_chip*) ;

void tpm_dev_release(struct device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);

 tpm_dev_vendor_release(chip);

 chip->release(dev);
 kfree(chip);
}
