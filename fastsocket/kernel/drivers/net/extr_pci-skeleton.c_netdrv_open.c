
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; int * function; scalar_t__ expires; } ;
struct netdrv_private {int tx_flag; TYPE_1__ timer; scalar_t__ full_duplex; int pci_dev; scalar_t__ duplex_lock; int rx_ring_dma; int * rx_ring; int tx_bufs_dma; int * tx_bufs; void* mmio_addr; } ;
struct net_device {int irq; int name; } ;


 int DPRINTK (char*,...) ;
 int ENOMEM ;
 int HZ ;
 int IRQF_SHARED ;
 int MediaStatus ;
 int NETDRV_R8 (int ) ;
 int RX_BUF_TOT_LEN ;
 int TX_BUF_TOT_LEN ;
 int TX_FIFO_THRESH ;
 int add_timer (TYPE_1__*) ;
 int free_irq (int ,struct net_device*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int netdrv_hw_start (struct net_device*) ;
 int netdrv_init_ring (struct net_device*) ;
 int netdrv_interrupt ;
 int netdrv_timer ;
 void* pci_alloc_consistent (int ,int ,int *) ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int pci_resource_start (int ,int) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int netdrv_open (struct net_device *dev)
{
 struct netdrv_private *tp = netdev_priv(dev);
 int retval;




 DPRINTK ("ENTER\n");

 retval = request_irq (dev->irq, netdrv_interrupt, IRQF_SHARED, dev->name, dev);
 if (retval) {
  DPRINTK ("EXIT, returning %d\n", retval);
  return retval;
 }

 tp->tx_bufs = pci_alloc_consistent(tp->pci_dev, TX_BUF_TOT_LEN,
        &tp->tx_bufs_dma);
 tp->rx_ring = pci_alloc_consistent(tp->pci_dev, RX_BUF_TOT_LEN,
        &tp->rx_ring_dma);
 if (tp->tx_bufs == ((void*)0) || tp->rx_ring == ((void*)0)) {
  free_irq(dev->irq, dev);

  if (tp->tx_bufs)
   pci_free_consistent(tp->pci_dev, TX_BUF_TOT_LEN,
         tp->tx_bufs, tp->tx_bufs_dma);
  if (tp->rx_ring)
   pci_free_consistent(tp->pci_dev, RX_BUF_TOT_LEN,
         tp->rx_ring, tp->rx_ring_dma);

  DPRINTK ("EXIT, returning -ENOMEM\n");
  return -ENOMEM;

 }

 tp->full_duplex = tp->duplex_lock;
 tp->tx_flag = (TX_FIFO_THRESH << 11) & 0x003f0000;

 netdrv_init_ring (dev);
 netdrv_hw_start (dev);

 DPRINTK ("%s: netdrv_open() ioaddr %#lx IRQ %d"
   " GP Pins %2.2x %s-duplex.\n",
   dev->name, pci_resource_start (tp->pci_dev, 1),
   dev->irq, NETDRV_R8 (MediaStatus),
   tp->full_duplex ? "full" : "half");



 init_timer (&tp->timer);
 tp->timer.expires = jiffies + 3 * HZ;
 tp->timer.data = (unsigned long) dev;
 tp->timer.function = &netdrv_timer;
 add_timer (&tp->timer);

 DPRINTK ("EXIT, returning 0\n");
 return 0;
}
