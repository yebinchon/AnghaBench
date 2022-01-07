
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdrv_private {int * tx_bufs; int * rx_ring; int tx_bufs_dma; int pci_dev; int rx_ring_dma; int lock; int timer; void* mmio_addr; } ;
struct TYPE_2__ {int rx_missed_errors; } ;
struct net_device {int irq; TYPE_1__ stats; int name; } ;


 int Cfg9346 ;
 int Cfg9346_Lock ;
 int Cfg9346_Unlock ;
 int ChipCmd ;
 int ChipCmdClear ;
 int Config1 ;
 int DPRINTK (char*,...) ;
 int IntrMask ;
 int IntrStatus ;
 int NETDRV_R16 (int ) ;
 scalar_t__ NETDRV_R32 (int ) ;
 int NETDRV_R8 (int ) ;
 int NETDRV_W16 (int ,int) ;
 int NETDRV_W32 (int ,int ) ;
 int NETDRV_W8 (int ,int) ;
 int RX_BUF_TOT_LEN ;
 int RxMissed ;
 int TX_BUF_TOT_LEN ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int netdrv_tx_clear (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int netdrv_close (struct net_device *dev)
{
 struct netdrv_private *tp = netdev_priv(dev);
 void *ioaddr = tp->mmio_addr;
 unsigned long flags;

 DPRINTK ("ENTER\n");

 netif_stop_queue (dev);

 DPRINTK ("%s: Shutting down ethercard, status was 0x%4.4x.\n",
   dev->name, NETDRV_R16 (IntrStatus));

 del_timer_sync (&tp->timer);

 spin_lock_irqsave (&tp->lock, flags);


 NETDRV_W8 (ChipCmd, (NETDRV_R8 (ChipCmd) & ChipCmdClear));


 NETDRV_W16 (IntrMask, 0x0000);


 dev->stats.rx_missed_errors += NETDRV_R32 (RxMissed);
 NETDRV_W32 (RxMissed, 0);

 spin_unlock_irqrestore (&tp->lock, flags);

 free_irq (dev->irq, dev);

 netdrv_tx_clear (dev);

 pci_free_consistent(tp->pci_dev, RX_BUF_TOT_LEN,
       tp->rx_ring, tp->rx_ring_dma);
 pci_free_consistent(tp->pci_dev, TX_BUF_TOT_LEN,
       tp->tx_bufs, tp->tx_bufs_dma);
 tp->rx_ring = ((void*)0);
 tp->tx_bufs = ((void*)0);


 NETDRV_W8 (Cfg9346, Cfg9346_Unlock);
 NETDRV_W8 (Config1, 0x03);
 NETDRV_W8 (Cfg9346, Cfg9346_Lock);

 DPRINTK ("EXIT\n");
 return 0;
}
