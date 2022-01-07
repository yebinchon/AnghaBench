
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct rtl8169_private {int dev; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (struct device*,int ,int,int ) ;
 int dma_sync_single_for_device (struct device*,int ,int,int ) ;
 int memcpy (int ,void*,int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int) ;
 int prefetch (void*) ;
 void* rtl8169_align (void*) ;

__attribute__((used)) static struct sk_buff *rtl8169_try_rx_copy(void *data,
        struct rtl8169_private *tp,
        int pkt_size,
        dma_addr_t addr)
{
 struct sk_buff *skb;
 struct device *d = &tp->pci_dev->dev;

 data = rtl8169_align(data);
 dma_sync_single_for_cpu(d, addr, pkt_size, DMA_FROM_DEVICE);
 prefetch(data);
 skb = netdev_alloc_skb_ip_align(tp->dev, pkt_size);
 if (skb)
  memcpy(skb->data, data, pkt_size);
 dma_sync_single_for_device(d, addr, pkt_size, DMA_FROM_DEVICE);

 return skb;
}
