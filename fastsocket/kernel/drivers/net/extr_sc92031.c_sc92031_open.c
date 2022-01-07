
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {int rx_ring_dma_addr; void* rx_ring; int tx_bufs_dma_addr; void* tx_bufs; int lock; scalar_t__ pm_config; scalar_t__ tx_tail; scalar_t__ tx_head; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;
struct net_device {int name; } ;


 int ENOMEM ;
 int IRQF_SHARED ;
 int RX_BUF_LEN ;
 int TX_BUF_TOT_LEN ;
 int _sc92031_reset (struct net_device*) ;
 int mmiowb () ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 void* pci_alloc_consistent (struct pci_dev*,int ,int *) ;
 int pci_free_consistent (struct pci_dev*,int ,void*,int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int sc92031_enable_interrupts (struct net_device*) ;
 int sc92031_interrupt ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sc92031_open(struct net_device *dev)
{
 int err;
 struct sc92031_priv *priv = netdev_priv(dev);
 struct pci_dev *pdev = priv->pdev;

 priv->rx_ring = pci_alloc_consistent(pdev, RX_BUF_LEN,
   &priv->rx_ring_dma_addr);
 if (unlikely(!priv->rx_ring)) {
  err = -ENOMEM;
  goto out_alloc_rx_ring;
 }

 priv->tx_bufs = pci_alloc_consistent(pdev, TX_BUF_TOT_LEN,
   &priv->tx_bufs_dma_addr);
 if (unlikely(!priv->tx_bufs)) {
  err = -ENOMEM;
  goto out_alloc_tx_bufs;
 }
 priv->tx_head = priv->tx_tail = 0;

 err = request_irq(pdev->irq, sc92031_interrupt,
   IRQF_SHARED, dev->name, dev);
 if (unlikely(err < 0))
  goto out_request_irq;

 priv->pm_config = 0;


 spin_lock_bh(&priv->lock);

 _sc92031_reset(dev);
 mmiowb();

 spin_unlock_bh(&priv->lock);
 sc92031_enable_interrupts(dev);

 if (netif_carrier_ok(dev))
  netif_start_queue(dev);
 else
  netif_tx_disable(dev);

 return 0;

out_request_irq:
 pci_free_consistent(pdev, TX_BUF_TOT_LEN, priv->tx_bufs,
   priv->tx_bufs_dma_addr);
out_alloc_tx_bufs:
 pci_free_consistent(pdev, RX_BUF_LEN, priv->rx_ring,
   priv->rx_ring_dma_addr);
out_alloc_rx_ring:
 return err;
}
