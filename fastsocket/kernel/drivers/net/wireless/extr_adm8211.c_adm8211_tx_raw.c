
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; int data; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {unsigned int cur_tx; int dirty_tx; int tx_ring_size; int lock; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int pdev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {void* status; void* length; void* buffer1; } ;
struct TYPE_3__ {int mapping; size_t hdrlen; struct sk_buff* skb; } ;


 int ADM8211_CSR_WRITE (int ,int ) ;
 int PCI_DMA_TODEVICE ;
 int TDES0_CONTROL_OWN ;
 int TDES1_CONTROL_FS ;
 int TDES1_CONTROL_IC ;
 int TDES1_CONTROL_LS ;
 int TDES1_CONTROL_TER ;
 int TDR ;
 void* cpu_to_le32 (int) ;
 int ieee80211_stop_queue (struct ieee80211_hw*,int ) ;
 int pci_map_single (int ,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void adm8211_tx_raw(struct ieee80211_hw *dev, struct sk_buff *skb,
      u16 plcp_signal,
      size_t hdrlen)
{
 struct adm8211_priv *priv = dev->priv;
 unsigned long flags;
 dma_addr_t mapping;
 unsigned int entry;
 u32 flag;

 mapping = pci_map_single(priv->pdev, skb->data, skb->len,
     PCI_DMA_TODEVICE);

 spin_lock_irqsave(&priv->lock, flags);

 if (priv->cur_tx - priv->dirty_tx == priv->tx_ring_size / 2)
  flag = TDES1_CONTROL_IC | TDES1_CONTROL_LS | TDES1_CONTROL_FS;
 else
  flag = TDES1_CONTROL_LS | TDES1_CONTROL_FS;

 if (priv->cur_tx - priv->dirty_tx == priv->tx_ring_size - 2)
  ieee80211_stop_queue(dev, 0);

 entry = priv->cur_tx % priv->tx_ring_size;

 priv->tx_buffers[entry].skb = skb;
 priv->tx_buffers[entry].mapping = mapping;
 priv->tx_buffers[entry].hdrlen = hdrlen;
 priv->tx_ring[entry].buffer1 = cpu_to_le32(mapping);

 if (entry == priv->tx_ring_size - 1)
  flag |= TDES1_CONTROL_TER;
 priv->tx_ring[entry].length = cpu_to_le32(flag | skb->len);


 flag = TDES0_CONTROL_OWN | (plcp_signal << 20) | 8 ;
 priv->tx_ring[entry].status = cpu_to_le32(flag);

 priv->cur_tx++;

 spin_unlock_irqrestore(&priv->lock, flags);


 ADM8211_CSR_WRITE(TDR, 0);
}
