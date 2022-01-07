
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_device {int port; } ;
struct aer_rpc {int prod_idx; int cons_idx; int dpc_handler; int e_lock; TYPE_1__* e_sources; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned int status; unsigned int id; } ;


 int AER_ERROR_SOURCES_MAX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int PCI_ERR_ROOT_COR_RCV ;
 scalar_t__ PCI_ERR_ROOT_ERR_SRC ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 unsigned int PCI_ERR_ROOT_UNCOR_RCV ;
 int PCI_EXT_CAP_ID_ERR ;
 struct aer_rpc* get_service_data (struct pcie_device*) ;
 int pci_find_ext_capability (int ,int ) ;
 int pci_read_config_dword (int ,scalar_t__,unsigned int*) ;
 int pci_write_config_dword (int ,scalar_t__,unsigned int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

irqreturn_t aer_irq(int irq, void *context)
{
 unsigned int status, id;
 struct pcie_device *pdev = (struct pcie_device *)context;
 struct aer_rpc *rpc = get_service_data(pdev);
 int next_prod_idx;
 unsigned long flags;
 int pos;

 pos = pci_find_ext_capability(pdev->port, PCI_EXT_CAP_ID_ERR);




 spin_lock_irqsave(&rpc->e_lock, flags);


 pci_read_config_dword(pdev->port, pos + PCI_ERR_ROOT_STATUS, &status);
 if (!(status & (PCI_ERR_ROOT_UNCOR_RCV|PCI_ERR_ROOT_COR_RCV))) {
  spin_unlock_irqrestore(&rpc->e_lock, flags);
  return IRQ_NONE;
 }


 pci_read_config_dword(pdev->port, pos + PCI_ERR_ROOT_ERR_SRC, &id);
 pci_write_config_dword(pdev->port, pos + PCI_ERR_ROOT_STATUS, status);


 next_prod_idx = rpc->prod_idx + 1;
 if (next_prod_idx == AER_ERROR_SOURCES_MAX)
  next_prod_idx = 0;
 if (next_prod_idx == rpc->cons_idx) {




  spin_unlock_irqrestore(&rpc->e_lock, flags);
  return IRQ_HANDLED;
 }
 rpc->e_sources[rpc->prod_idx].status = status;
 rpc->e_sources[rpc->prod_idx].id = id;
 rpc->prod_idx = next_prod_idx;
 spin_unlock_irqrestore(&rpc->e_lock, flags);


 schedule_work(&rpc->dpc_handler);

 return IRQ_HANDLED;
}
