
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ miscdev; int (* release ) (int ) ;} ;
struct tpm_chip {TYPE_2__ vendor; int dev_num; int dev; } ;


 int clear_bit (int ,int ) ;
 int dev_mask ;
 int kfree (int ) ;
 int stub1 (int ) ;

void tpm_dev_vendor_release(struct tpm_chip *chip)
{
 if (chip->vendor.release)
  chip->vendor.release(chip->dev);

 clear_bit(chip->dev_num, dev_mask);
 kfree(chip->vendor.miscdev.name);
}
