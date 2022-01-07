
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct tpm_chip {int dev; TYPE_1__ vendor; } ;
struct device {int dummy; } ;


 struct tpm_chip* dev_get_drvdata (struct device*) ;
 int release_region (int ,int) ;
 int tpm_remove_hardware (int ) ;

__attribute__((used)) static void tpm_nsc_remove(struct device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);
 if ( chip ) {
  release_region(chip->vendor.base, 2);
  tpm_remove_hardware(chip->dev);
 }
}
