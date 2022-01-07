
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iobase; int region_size; int base; scalar_t__ have_region; } ;
struct tpm_chip {int dev; TYPE_1__ vendor; } ;
struct TYPE_5__ {int dev; } ;


 int atmel_put_base_addr (int ) ;
 int atmel_release_region (int ,int ) ;
 struct tpm_chip* dev_get_drvdata (int *) ;
 TYPE_2__* pdev ;
 int platform_device_unregister (TYPE_2__*) ;
 int tpm_remove_hardware (int ) ;

__attribute__((used)) static void atml_plat_remove(void)
{
 struct tpm_chip *chip = dev_get_drvdata(&pdev->dev);

 if (chip) {
  if (chip->vendor.have_region)
   atmel_release_region(chip->vendor.base,
          chip->vendor.region_size);
  atmel_put_base_addr(chip->vendor.iobase);
  tpm_remove_hardware(chip->dev);
  platform_device_unregister(pdev);
 }
}
