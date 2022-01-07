
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tpm_chip {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int ENODEV ;
 int __tpm_pcr_read (struct tpm_chip*,int,int *) ;
 int module_put (int ) ;
 struct tpm_chip* tpm_chip_find_get (int ) ;

int tpm_pcr_read(u32 chip_num, int pcr_idx, u8 *res_buf)
{
 struct tpm_chip *chip;
 int rc;

 chip = tpm_chip_find_get(chip_num);
 if (chip == ((void*)0))
  return -ENODEV;
 rc = __tpm_pcr_read(chip, pcr_idx, res_buf);
 module_put(chip->dev->driver->owner);
 return rc;
}
