
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct be_dma_mem {int size; int dma; int * va; } ;
struct be_cmd_req_acpi_wol_magic_config {int dummy; } ;
struct be_adapter {TYPE_2__* pdev; TYPE_1__* netdev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int * dev_addr; } ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 int PCICFG_PM_CONTROL_MASK ;
 int PCICFG_PM_CONTROL_OFFSET ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 int __GFP_ZERO ;
 int be_cmd_enable_magic_wol (struct be_adapter*,int *,struct be_dma_mem*) ;
 int dev_err (int *,char*) ;
 int * dma_alloc_coherent (int *,int,int *,int) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int memset (int *,int ,int) ;
 int pci_enable_wake (TYPE_2__*,int ,int) ;
 int pci_write_config_dword (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int be_setup_wol(struct be_adapter *adapter, bool enable)
{
 struct be_dma_mem cmd;
 int status = 0;
 u8 mac[ETH_ALEN];

 memset(mac, 0, ETH_ALEN);

 cmd.size = sizeof(struct be_cmd_req_acpi_wol_magic_config);
 cmd.va = dma_alloc_coherent(&adapter->pdev->dev, cmd.size, &cmd.dma,
        GFP_KERNEL | __GFP_ZERO);
 if (cmd.va == ((void*)0))
  return -1;

 if (enable) {
  status = pci_write_config_dword(adapter->pdev,
   PCICFG_PM_CONTROL_OFFSET, PCICFG_PM_CONTROL_MASK);
  if (status) {
   dev_err(&adapter->pdev->dev,
    "Could not enable Wake-on-lan\n");
   dma_free_coherent(&adapter->pdev->dev, cmd.size, cmd.va,
       cmd.dma);
   return status;
  }
  status = be_cmd_enable_magic_wol(adapter,
    adapter->netdev->dev_addr, &cmd);
  pci_enable_wake(adapter->pdev, PCI_D3hot, 1);
  pci_enable_wake(adapter->pdev, PCI_D3cold, 1);
 } else {
  status = be_cmd_enable_magic_wol(adapter, mac, &cmd);
  pci_enable_wake(adapter->pdev, PCI_D3hot, 0);
  pci_enable_wake(adapter->pdev, PCI_D3cold, 0);
 }

 dma_free_coherent(&adapter->pdev->dev, cmd.size, cmd.va, cmd.dma);
 return status;
}
