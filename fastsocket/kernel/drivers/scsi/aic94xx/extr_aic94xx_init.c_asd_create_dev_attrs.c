
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_ha_struct {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_bios_build ;
 int dev_attr_pcba_sn ;
 int dev_attr_revision ;
 int dev_attr_update_bios ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int asd_create_dev_attrs(struct asd_ha_struct *asd_ha)
{
 int err;

 err = device_create_file(&asd_ha->pcidev->dev, &dev_attr_revision);
 if (err)
  return err;

 err = device_create_file(&asd_ha->pcidev->dev, &dev_attr_bios_build);
 if (err)
  goto err_rev;

 err = device_create_file(&asd_ha->pcidev->dev, &dev_attr_pcba_sn);
 if (err)
  goto err_biosb;
 err = device_create_file(&asd_ha->pcidev->dev, &dev_attr_update_bios);
 if (err)
  goto err_update_bios;

 return 0;

err_update_bios:
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_pcba_sn);
err_biosb:
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_bios_build);
err_rev:
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_revision);
 return err;
}
