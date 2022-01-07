
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tulip_private {int cur_tx; int dirty_tx; int lock; scalar_t__ base_addr; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int pdev; } ;
struct sk_buff {int len; int data; } ;
struct net_device {int trans_start; } ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {void* status; void* length; void* buffer1; } ;
struct TYPE_3__ {int mapping; struct sk_buff* skb; } ;


 scalar_t__ CSR1 ;
 int DESC_RING_WRAP ;
 int DescOwned ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int TX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 int iowrite32 (int ,scalar_t__) ;
 int jiffies ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_map_single (int ,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t
tulip_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 int entry;
 u32 flag;
 dma_addr_t mapping;
 unsigned long flags;

 spin_lock_irqsave(&tp->lock, flags);


 entry = tp->cur_tx % TX_RING_SIZE;

 tp->tx_buffers[entry].skb = skb;
 mapping = pci_map_single(tp->pdev, skb->data,
     skb->len, PCI_DMA_TODEVICE);
 tp->tx_buffers[entry].mapping = mapping;
 tp->tx_ring[entry].buffer1 = cpu_to_le32(mapping);

 if (tp->cur_tx - tp->dirty_tx < TX_RING_SIZE/2) {
  flag = 0x60000000;
 } else if (tp->cur_tx - tp->dirty_tx == TX_RING_SIZE/2) {
  flag = 0xe0000000;
 } else if (tp->cur_tx - tp->dirty_tx < TX_RING_SIZE - 2) {
  flag = 0x60000000;
 } else {
  flag = 0xe0000000;
  netif_stop_queue(dev);
 }
 if (entry == TX_RING_SIZE-1)
  flag = 0xe0000000 | DESC_RING_WRAP;

 tp->tx_ring[entry].length = cpu_to_le32(skb->len | flag);


 tp->tx_ring[entry].status = cpu_to_le32(DescOwned);
 wmb();

 tp->cur_tx++;


 iowrite32(0, tp->base_addr + CSR1);

 spin_unlock_irqrestore(&tp->lock, flags);

 dev->trans_start = jiffies;

 return NETDEV_TX_OK;
}
