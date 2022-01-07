
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct bcma_drv_pci {TYPE_2__* core; } ;
struct bcma_device {int core_index; TYPE_1__* bus; } ;
struct TYPE_6__ {struct pci_dev* host_pci; } ;
struct TYPE_5__ {TYPE_3__* bus; } ;
struct TYPE_4__ {scalar_t__ hosttype; } ;


 scalar_t__ BCMA_HOSTTYPE_PCI ;
 int BCMA_PCI_IRQMASK ;
 int BIT (int ) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

int bcma_core_pci_irq_ctl(struct bcma_drv_pci *pc, struct bcma_device *core,
     bool enable)
{
 struct pci_dev *pdev;
 u32 coremask, tmp;
 int err = 0;

 if (!pc || core->bus->hosttype != BCMA_HOSTTYPE_PCI) {



  goto out;
 }

 pdev = pc->core->bus->host_pci;

 err = pci_read_config_dword(pdev, BCMA_PCI_IRQMASK, &tmp);
 if (err)
  goto out;

 coremask = BIT(core->core_index) << 8;
 if (enable)
  tmp |= coremask;
 else
  tmp &= ~coremask;

 err = pci_write_config_dword(pdev, BCMA_PCI_IRQMASK, tmp);

out:
 return err;
}
