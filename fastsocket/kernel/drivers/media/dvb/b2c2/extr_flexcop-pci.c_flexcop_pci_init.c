
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct flexcop_pci {TYPE_1__* pdev; int io_mem; int init_state; int irq_lock; } ;
struct TYPE_10__ {int irq; } ;


 int DRIVER_NAME ;
 int EIO ;
 int FC_PCI_INIT ;
 int IRQF_SHARED ;
 int PCI_CLASS_REVISION ;
 int err (char*) ;
 int flexcop_pci_isr ;
 int info (char*,int ) ;
 int pci_disable_device (TYPE_1__*) ;
 int pci_enable_device (TYPE_1__*) ;
 int pci_iomap (TYPE_1__*,int ,int) ;
 int pci_iounmap (TYPE_1__*,int ) ;
 int pci_read_config_byte (TYPE_1__*,int ,int *) ;
 int pci_release_regions (TYPE_1__*) ;
 int pci_request_regions (TYPE_1__*,int ) ;
 int pci_set_drvdata (TYPE_1__*,struct flexcop_pci*) ;
 int pci_set_master (TYPE_1__*) ;
 int request_irq (int ,int ,int ,int ,struct flexcop_pci*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int flexcop_pci_init(struct flexcop_pci *fc_pci)
{
 int ret;
 u8 card_rev;

 pci_read_config_byte(fc_pci->pdev, PCI_CLASS_REVISION, &card_rev);
 info("card revision %x", card_rev);

 if ((ret = pci_enable_device(fc_pci->pdev)) != 0)
  return ret;
 pci_set_master(fc_pci->pdev);

 if ((ret = pci_request_regions(fc_pci->pdev, DRIVER_NAME)) != 0)
  goto err_pci_disable_device;

 fc_pci->io_mem = pci_iomap(fc_pci->pdev, 0, 0x800);

 if (!fc_pci->io_mem) {
  err("cannot map io memory\n");
  ret = -EIO;
  goto err_pci_release_regions;
 }

 pci_set_drvdata(fc_pci->pdev, fc_pci);
 spin_lock_init(&fc_pci->irq_lock);
 if ((ret = request_irq(fc_pci->pdev->irq, flexcop_pci_isr,
     IRQF_SHARED, DRIVER_NAME, fc_pci)) != 0)
  goto err_pci_iounmap;

 fc_pci->init_state |= FC_PCI_INIT;
 return ret;

err_pci_iounmap:
 pci_iounmap(fc_pci->pdev, fc_pci->io_mem);
 pci_set_drvdata(fc_pci->pdev, ((void*)0));
err_pci_release_regions:
 pci_release_regions(fc_pci->pdev);
err_pci_disable_device:
 pci_disable_device(fc_pci->pdev);
 return ret;
}
