
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct net_device {int trans_start; int name; } ;
struct ks8695_priv {scalar_t__ tx_ring_used; int tx_ring_next_slot; int txq_lock; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {void* owner; void* status; void* data_ptr; } ;
struct TYPE_3__ {int dma_ptr; int length; struct sk_buff* skb; } ;


 int BUG_ON (struct sk_buff*) ;
 int DMA_TO_DEVICE ;
 int KS8695_DTSC ;
 scalar_t__ MAX_TX_DESC ;
 int MAX_TX_DESC_MASK ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TDES_FS ;
 int TDES_IC ;
 int TDES_LS ;
 int TDES_OWN ;
 int TDES_TBS ;
 void* cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,int ) ;
 int dma_map_single (int ,int ,int,int ) ;
 int dma_mapping_error (int ,int) ;
 int jiffies ;
 int ks8695_writereg (struct ks8695_priv*,int ,int ) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static int
ks8695_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 int buff_n;
 dma_addr_t dmap;

 spin_lock_irq(&ksp->txq_lock);

 if (ksp->tx_ring_used == MAX_TX_DESC) {

  spin_unlock_irq(&ksp->txq_lock);
  return NETDEV_TX_BUSY;
 }

 buff_n = ksp->tx_ring_next_slot;

 BUG_ON(ksp->tx_buffers[buff_n].skb);

 dmap = dma_map_single(ksp->dev, skb->data, skb->len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(ksp->dev, dmap))) {

  spin_unlock_irq(&ksp->txq_lock);
  dev_dbg(ksp->dev, "%s: Could not map DMA memory for " "transmission, trying later\n", ndev->name);

  return NETDEV_TX_BUSY;
 }

 ksp->tx_buffers[buff_n].dma_ptr = dmap;

 ksp->tx_buffers[buff_n].skb = skb;
 ksp->tx_buffers[buff_n].length = skb->len;


 ksp->tx_ring[buff_n].data_ptr =
  cpu_to_le32(ksp->tx_buffers[buff_n].dma_ptr);
 ksp->tx_ring[buff_n].status =
  cpu_to_le32(TDES_IC | TDES_FS | TDES_LS |
       (skb->len & TDES_TBS));

 wmb();


 ksp->tx_ring[buff_n].owner = cpu_to_le32(TDES_OWN);

 if (++ksp->tx_ring_used == MAX_TX_DESC)
  netif_stop_queue(ndev);

 ndev->trans_start = jiffies;


 ks8695_writereg(ksp, KS8695_DTSC, 0);


 ksp->tx_ring_next_slot = (buff_n + 1) & MAX_TX_DESC_MASK;

 spin_unlock_irq(&ksp->txq_lock);
 return NETDEV_TX_OK;
}
