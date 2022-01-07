
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
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void asd_remove_dev_attrs(struct asd_ha_struct *asd_ha)
{
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_revision);
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_bios_build);
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_pcba_sn);
 device_remove_file(&asd_ha->pcidev->dev, &dev_attr_update_bios);
}
