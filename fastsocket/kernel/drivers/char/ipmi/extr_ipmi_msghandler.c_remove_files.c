
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aux_firmware_revision_set; } ;
struct bmc_device {int guid_attr; TYPE_2__* dev; scalar_t__ guid_set; int aux_firmware_rev_attr; TYPE_1__ id; int product_id_attr; int manufacturer_id_attr; int add_dev_support_attr; int version_attr; int firmware_rev_attr; int revision_attr; int provides_dev_sdrs_attr; int device_id_attr; } ;
struct TYPE_4__ {int dev; } ;


 int device_remove_file (int *,int *) ;

__attribute__((used)) static void remove_files(struct bmc_device *bmc)
{
 if (!bmc->dev)
  return;

 device_remove_file(&bmc->dev->dev,
      &bmc->device_id_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->provides_dev_sdrs_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->revision_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->firmware_rev_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->version_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->add_dev_support_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->manufacturer_id_attr);
 device_remove_file(&bmc->dev->dev,
      &bmc->product_id_attr);

 if (bmc->id.aux_firmware_revision_set)
  device_remove_file(&bmc->dev->dev,
       &bmc->aux_firmware_rev_attr);
 if (bmc->guid_set)
  device_remove_file(&bmc->dev->dev,
       &bmc->guid_attr);
}
