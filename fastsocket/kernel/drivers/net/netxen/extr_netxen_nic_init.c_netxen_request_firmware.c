
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct netxen_adapter {size_t fw_type; int * fw; struct pci_dev* pdev; } ;


 size_t NX_FLASH_ROMIMAGE ;
 size_t NX_UNKNOWN_ROMIMAGE ;
 int * fw_name ;
 int msleep (int) ;
 int netxen_validate_firmware (struct netxen_adapter*) ;
 int nx_get_next_fwtype (struct netxen_adapter*) ;
 int release_firmware (int *) ;
 int request_firmware (int **,int ,int *) ;

void netxen_request_firmware(struct netxen_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 int rc = 0;

 adapter->fw_type = NX_UNKNOWN_ROMIMAGE;

next:
 nx_get_next_fwtype(adapter);

 if (adapter->fw_type == NX_FLASH_ROMIMAGE) {
  adapter->fw = ((void*)0);
 } else {
  rc = request_firmware(&adapter->fw,
    fw_name[adapter->fw_type], &pdev->dev);
  if (rc != 0)
   goto next;

  rc = netxen_validate_firmware(adapter);
  if (rc != 0) {
   release_firmware(adapter->fw);
   msleep(1);
   goto next;
  }
 }
}
