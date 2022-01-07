
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct dscc4_dev_priv {int tx_dirty; struct sk_buff** tx_skbuff; TYPE_1__* pci_priv; struct TxFD* tx_fd; } ;
struct TxFD {int state; int data; } ;
struct TYPE_2__ {int pdev; } ;


 int DUMMY_SKB_SIZE ;
 int FrameEnd ;
 int PCI_DMA_TODEVICE ;
 int TO_STATE_TX (int) ;
 int TX_RING_SIZE ;
 int cpu_to_le32 (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int pci_map_single (int ,int ,int,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int) ;
 int strlen (int ) ;
 int version ;

__attribute__((used)) static struct sk_buff *dscc4_init_dummy_skb(struct dscc4_dev_priv *dpriv)
{
 struct sk_buff *skb;

 skb = dev_alloc_skb(DUMMY_SKB_SIZE);
 if (skb) {
  int last = dpriv->tx_dirty%TX_RING_SIZE;
  struct TxFD *tx_fd = dpriv->tx_fd + last;

  skb->len = DUMMY_SKB_SIZE;
  skb_copy_to_linear_data(skb, version,
     strlen(version) % DUMMY_SKB_SIZE);
  tx_fd->state = FrameEnd | TO_STATE_TX(DUMMY_SKB_SIZE);
  tx_fd->data = cpu_to_le32(pci_map_single(dpriv->pci_priv->pdev,
          skb->data, DUMMY_SKB_SIZE,
          PCI_DMA_TODEVICE));
  dpriv->tx_skbuff[last] = skb;
 }
 return skb;
}
