
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_adapter {int have_msi; TYPE_1__* pdev; struct net_device* netdev; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int pch_gbe_intr ;
 int pci_enable_msi (TYPE_1__*) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int) ;
 int request_irq (int ,int *,int,int ,struct net_device*) ;

__attribute__((used)) static int pch_gbe_request_irq(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;
 int flags;

 flags = IRQF_SHARED;
 adapter->have_msi = 0;
 err = pci_enable_msi(adapter->pdev);
 pr_debug("call pci_enable_msi\n");
 if (err) {
  pr_debug("call pci_enable_msi - Error: %d\n", err);
 } else {
  flags = 0;
  adapter->have_msi = 1;
 }
 err = request_irq(adapter->pdev->irq, &pch_gbe_intr,
     flags, netdev->name, netdev);
 if (err)
  pr_err("Unable to allocate interrupt Error: %d\n", err);
 pr_debug("adapter->have_msi : %d  flags : 0x%04x  return : 0x%04x\n",
   adapter->have_msi, flags, err);
 return err;
}
