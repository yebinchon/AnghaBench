
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ql_adapter {int intr_count; int ndev; int flags; int pdev; TYPE_1__* msi_x_entry; } ;
struct msix_entry {int dummy; } ;
struct TYPE_4__ {int entry; } ;


 int GFP_KERNEL ;
 int KERN_DEBUG ;
 scalar_t__ LEG_IRQ ;
 scalar_t__ MSIX_IRQ ;
 scalar_t__ MSI_IRQ ;
 int QL_MSIX_ENABLED ;
 int QL_MSI_ENABLED ;
 int ifup ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int netif_info (struct ql_adapter*,int ,int ,char*,...) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*) ;
 int netif_warn (struct ql_adapter*,int ,int ,char*) ;
 int pci_enable_msi (int ) ;
 int pci_enable_msix (int ,TYPE_1__*,int) ;
 scalar_t__ qlge_irq_type ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ql_enable_msix(struct ql_adapter *qdev)
{
 int i, err;


 if (qlge_irq_type == MSIX_IRQ) {



  qdev->msi_x_entry = kcalloc(qdev->intr_count,
         sizeof(struct msix_entry),
         GFP_KERNEL);
  if (!qdev->msi_x_entry) {
   qlge_irq_type = MSI_IRQ;
   goto msi;
  }

  for (i = 0; i < qdev->intr_count; i++)
   qdev->msi_x_entry[i].entry = i;




  do {
   err = pci_enable_msix(qdev->pdev,
    qdev->msi_x_entry, qdev->intr_count);
   if (err > 0)
    qdev->intr_count = err;
  } while (err > 0);

  if (err < 0) {
   kfree(qdev->msi_x_entry);
   qdev->msi_x_entry = ((void*)0);
   netif_warn(qdev, ifup, qdev->ndev,
       "MSI-X Enable failed, trying MSI.\n");
   qdev->intr_count = 1;
   qlge_irq_type = MSI_IRQ;
  } else if (err == 0) {
   set_bit(QL_MSIX_ENABLED, &qdev->flags);
   netif_info(qdev, ifup, qdev->ndev,
       "MSI-X Enabled, got %d vectors.\n",
       qdev->intr_count);
   return;
  }
 }
msi:
 qdev->intr_count = 1;
 if (qlge_irq_type == MSI_IRQ) {
  if (!pci_enable_msi(qdev->pdev)) {
   set_bit(QL_MSI_ENABLED, &qdev->flags);
   netif_info(qdev, ifup, qdev->ndev,
       "Running with MSI interrupts.\n");
   return;
  }
 }
 qlge_irq_type = LEG_IRQ;
 netif_printk(qdev, ifup, KERN_DEBUG, qdev->ndev,
       "Running with legacy interrupts.\n");
}
