
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; int protocol; } ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {unsigned int rx_dirty; TYPE_1__* pci_priv; struct sk_buff** rx_skbuff; struct RxFD* rx_fd; } ;
struct RxFD {scalar_t__ data; } ;
struct TYPE_2__ {int pdev; } ;


 int HDLC_MAX_MRU ;
 int PCI_DMA_FROMDEVICE ;
 int RX_MAX (int ) ;
 unsigned int RX_RING_SIZE ;
 scalar_t__ cpu_to_le32 (int ) ;
 struct sk_buff* dev_alloc_skb (int const) ;
 int hdlc_type_trans (struct sk_buff*,struct net_device*) ;
 int pci_map_single (int ,int ,int const,int ) ;

__attribute__((used)) static inline int try_get_rx_skb(struct dscc4_dev_priv *dpriv,
     struct net_device *dev)
{
 unsigned int dirty = dpriv->rx_dirty%RX_RING_SIZE;
 struct RxFD *rx_fd = dpriv->rx_fd + dirty;
 const int len = RX_MAX(HDLC_MAX_MRU);
 struct sk_buff *skb;
 int ret = 0;

 skb = dev_alloc_skb(len);
 dpriv->rx_skbuff[dirty] = skb;
 if (skb) {
  skb->protocol = hdlc_type_trans(skb, dev);
  rx_fd->data = cpu_to_le32(pci_map_single(dpriv->pci_priv->pdev,
       skb->data, len, PCI_DMA_FROMDEVICE));
 } else {
  rx_fd->data = 0;
  ret = -1;
 }
 return ret;
}
