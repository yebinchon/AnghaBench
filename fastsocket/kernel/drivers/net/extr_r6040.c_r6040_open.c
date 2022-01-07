
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_private {scalar_t__ switch_sig; int timer; int napi; int rx_ring_dma; void* rx_ring; int pdev; int tx_ring_dma; void* tx_ring; } ;
struct net_device {int name; int irq; } ;


 int ENOMEM ;
 scalar_t__ HZ ;
 scalar_t__ ICPLUS_PHY_ID ;
 int IRQF_SHARED ;
 int RX_DESC_SIZE ;
 int TX_DESC_SIZE ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_enable (int *) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 void* pci_alloc_consistent (int ,int ,int *) ;
 int pci_free_consistent (int ,int ,void*,int ) ;
 int r6040_interrupt ;
 int r6040_mac_address (struct net_device*) ;
 int r6040_timer ;
 int r6040_up (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static int r6040_open(struct net_device *dev)
{
 struct r6040_private *lp = netdev_priv(dev);
 int ret;


 ret = request_irq(dev->irq, &r6040_interrupt,
  IRQF_SHARED, dev->name, dev);
 if (ret)
  return ret;


 r6040_mac_address(dev);


 lp->rx_ring =
  pci_alloc_consistent(lp->pdev, RX_DESC_SIZE, &lp->rx_ring_dma);
 if (!lp->rx_ring)
  return -ENOMEM;

 lp->tx_ring =
  pci_alloc_consistent(lp->pdev, TX_DESC_SIZE, &lp->tx_ring_dma);
 if (!lp->tx_ring) {
  pci_free_consistent(lp->pdev, RX_DESC_SIZE, lp->rx_ring,
         lp->rx_ring_dma);
  return -ENOMEM;
 }

 ret = r6040_up(dev);
 if (ret) {
  pci_free_consistent(lp->pdev, TX_DESC_SIZE, lp->tx_ring,
       lp->tx_ring_dma);
  pci_free_consistent(lp->pdev, RX_DESC_SIZE, lp->rx_ring,
       lp->rx_ring_dma);
  return ret;
 }

 napi_enable(&lp->napi);
 netif_start_queue(dev);


 setup_timer(&lp->timer, r6040_timer, (unsigned long) dev);
 if (lp->switch_sig != ICPLUS_PHY_ID)
  mod_timer(&lp->timer, jiffies + HZ);
 return 0;
}
