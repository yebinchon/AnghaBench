
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct bnad {int num_tx; int num_txq_per_tx; int num_rx; int num_rxp_per_rx; int rx_csum; int id; int bar0; int work_q; int wq_name; int rx_coalescing_timeo; int tx_coalescing_timeo; int rxq_depth; int txq_depth; scalar_t__ msix_num; int bna_lock; int cfg_flags; scalar_t__ mmio_len; int mmio_start; struct pci_dev* pcidev; struct net_device* netdev; } ;


 int BFI_RX_COALESCING_TIMEO ;
 int BFI_TX_COALESCING_TIMEO ;
 int BNAD_CF_DIM_ENABLED ;
 int BNAD_CF_MSIX ;
 scalar_t__ BNAD_MAILBOX_MSIX_VECTORS ;
 char* BNAD_NAME ;
 int BNAD_RXQ_DEPTH ;
 int BNAD_TXQ_DEPTH ;
 int ENOMEM ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int bnad_msix_disable ;
 int bnad_q_num_init (struct bnad*) ;
 int create_singlethread_workqueue (int ) ;
 int dev_err (int *,char*) ;
 int ioremap_nocache (int ,scalar_t__) ;
 int iounmap (int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pr_info (char*,int ,unsigned long long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static int
bnad_init(struct bnad *bnad,
   struct pci_dev *pdev, struct net_device *netdev)
{
 unsigned long flags;

 SET_NETDEV_DEV(netdev, &pdev->dev);
 pci_set_drvdata(pdev, netdev);

 bnad->netdev = netdev;
 bnad->pcidev = pdev;
 bnad->mmio_start = pci_resource_start(pdev, 0);
 bnad->mmio_len = pci_resource_len(pdev, 0);
 bnad->bar0 = ioremap_nocache(bnad->mmio_start, bnad->mmio_len);
 if (!bnad->bar0) {
  dev_err(&pdev->dev, "ioremap for bar0 failed\n");
  pci_set_drvdata(pdev, ((void*)0));
  return -ENOMEM;
 }
 pr_info("bar0 mapped to %p, len %llu\n", bnad->bar0,
        (unsigned long long) bnad->mmio_len);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (!bnad_msix_disable)
  bnad->cfg_flags = BNAD_CF_MSIX;

 bnad->cfg_flags |= BNAD_CF_DIM_ENABLED;

 bnad_q_num_init(bnad);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 bnad->msix_num = (bnad->num_tx * bnad->num_txq_per_tx) +
  (bnad->num_rx * bnad->num_rxp_per_rx) +
    BNAD_MAILBOX_MSIX_VECTORS;

 bnad->txq_depth = BNAD_TXQ_DEPTH;
 bnad->rxq_depth = BNAD_RXQ_DEPTH;
 bnad->rx_csum = 1;

 bnad->tx_coalescing_timeo = BFI_TX_COALESCING_TIMEO;
 bnad->rx_coalescing_timeo = BFI_RX_COALESCING_TIMEO;

 sprintf(bnad->wq_name, "%s_wq_%d", BNAD_NAME, bnad->id);
 bnad->work_q = create_singlethread_workqueue(bnad->wq_name);
 if (!bnad->work_q) {
  iounmap(bnad->bar0);
  return -ENOMEM;
 }

 return 0;
}
