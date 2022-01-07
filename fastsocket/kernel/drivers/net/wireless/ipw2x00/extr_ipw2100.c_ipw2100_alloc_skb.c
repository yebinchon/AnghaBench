
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw2100_rx_packet {TYPE_1__* skb; int dma_addr; struct ipw2100_rx* rxp; } ;
struct ipw2100_rx {int dummy; } ;
struct ipw2100_priv {int pci_dev; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 TYPE_1__* dev_alloc_skb (int) ;
 int pci_map_single (int ,scalar_t__,int,int ) ;

__attribute__((used)) static int ipw2100_alloc_skb(struct ipw2100_priv *priv,
        struct ipw2100_rx_packet *packet)
{
 packet->skb = dev_alloc_skb(sizeof(struct ipw2100_rx));
 if (!packet->skb)
  return -ENOMEM;

 packet->rxp = (struct ipw2100_rx *)packet->skb->data;
 packet->dma_addr = pci_map_single(priv->pci_dev, packet->skb->data,
       sizeof(struct ipw2100_rx),
       PCI_DMA_FROMDEVICE);



 return 0;
}
