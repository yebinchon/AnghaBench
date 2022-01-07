
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct smsc9420_pdata {int tx_ring_head; int tx_ring_tail; TYPE_2__* tx_ring; int dev; TYPE_1__* tx_buffers; int pdev; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct net_device {int trans_start; } ;
typedef int netdev_tx_t ;
typedef void* dma_addr_t ;
struct TYPE_4__ {int status; int length; void* buffer1; } ;
struct TYPE_3__ {int skb; int mapping; } ;


 int BUG_ON (int) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int TDES0_OWN_ ;
 int TDES1_IC_ ;
 int TDES1_LS_ ;
 int TDES1_TER_ ;
 int TX_ERR ;
 int TX_POLL_DEMAND ;
 int TX_RING_SIZE ;
 int jiffies ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int netif_stop_queue (int ) ;
 scalar_t__ pci_dma_mapping_error (int ,void*) ;
 void* pci_map_single (int ,int ,scalar_t__,int ) ;
 int rmb () ;
 int smsc9420_complete_tx (struct net_device*) ;
 int smsc9420_pci_flush_write (struct smsc9420_pdata*) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int smsc_warn (int ,char*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t smsc9420_hard_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 dma_addr_t mapping;
 int index = pd->tx_ring_head;
 u32 tmp_desc1;
 bool about_to_take_last_desc =
  (((pd->tx_ring_head + 2) % TX_RING_SIZE) == pd->tx_ring_tail);

 smsc9420_complete_tx(dev);

 rmb();
 BUG_ON(pd->tx_ring[index].status & TDES0_OWN_);
 BUG_ON(pd->tx_buffers[index].skb);
 BUG_ON(pd->tx_buffers[index].mapping);

 mapping = pci_map_single(pd->pdev, skb->data,
     skb->len, PCI_DMA_TODEVICE);
 if (pci_dma_mapping_error(pd->pdev, mapping)) {
  smsc_warn(TX_ERR, "pci_map_single failed, dropping packet");
  return NETDEV_TX_BUSY;
 }

 pd->tx_buffers[index].skb = skb;
 pd->tx_buffers[index].mapping = mapping;

 tmp_desc1 = (TDES1_LS_ | ((u32)skb->len & 0x7FF));
 if (unlikely(about_to_take_last_desc)) {
  tmp_desc1 |= TDES1_IC_;
  netif_stop_queue(pd->dev);
 }


 if (unlikely(index == (TX_RING_SIZE - 1)))
  tmp_desc1 |= TDES1_TER_;

 pd->tx_ring[index].buffer1 = mapping;
 pd->tx_ring[index].length = tmp_desc1;
 wmb();


 pd->tx_ring_head = (pd->tx_ring_head + 1) % TX_RING_SIZE;


 pd->tx_ring[index].status = TDES0_OWN_;
 wmb();


 smsc9420_reg_write(pd, TX_POLL_DEMAND, 1);
 smsc9420_pci_flush_write(pd);

 dev->trans_start = jiffies;

 return NETDEV_TX_OK;
}
