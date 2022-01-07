
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct smsc9420_pdata {int tx_ring_tail; int tx_ring_head; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {int status; int length; scalar_t__ buffer1; } ;
struct TYPE_4__ {TYPE_3__* skb; scalar_t__ mapping; } ;


 int BUG_ON (int) ;
 int PCI_DMA_TODEVICE ;
 int TDES0_OWN_ ;
 int TX_RING_SIZE ;
 int dev_kfree_skb_any (TYPE_3__*) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int rmb () ;
 int smsc9420_tx_update_stats (struct net_device*,int,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void smsc9420_complete_tx(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);

 while (pd->tx_ring_tail != pd->tx_ring_head) {
  int index = pd->tx_ring_tail;
  u32 status, length;

  rmb();
  status = pd->tx_ring[index].status;
  length = pd->tx_ring[index].length;


  if (unlikely(TDES0_OWN_ & status))
   break;

  smsc9420_tx_update_stats(dev, status, length);

  BUG_ON(!pd->tx_buffers[index].skb);
  BUG_ON(!pd->tx_buffers[index].mapping);

  pci_unmap_single(pd->pdev, pd->tx_buffers[index].mapping,
   pd->tx_buffers[index].skb->len, PCI_DMA_TODEVICE);
  pd->tx_buffers[index].mapping = 0;

  dev_kfree_skb_any(pd->tx_buffers[index].skb);
  pd->tx_buffers[index].skb = ((void*)0);

  pd->tx_ring[index].buffer1 = 0;
  wmb();

  pd->tx_ring_tail = (pd->tx_ring_tail + 1) % TX_RING_SIZE;
 }
}
