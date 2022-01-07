
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void sk_buff ;
struct rtl8169_private {struct net_device* dev; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct RxDesc {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int dev_to_node (scalar_t__) ;
 int dma_map_single (struct device*,void*,scalar_t__,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int drv ;
 int kfree (void*) ;
 void* kmalloc_node (scalar_t__,int ,int) ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct rtl8169_private*,int ,struct net_device*,char*) ;
 void* rtl8169_align (void*) ;
 int rtl8169_map_to_asic (struct RxDesc*,int ,scalar_t__) ;
 scalar_t__ rx_buf_sz ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct sk_buff *rtl8169_alloc_rx_data(struct rtl8169_private *tp,
          struct RxDesc *desc)
{
 void *data;
 dma_addr_t mapping;
 struct device *d = &tp->pci_dev->dev;
 struct net_device *dev = tp->dev;
 int node = dev->dev.parent ? dev_to_node(dev->dev.parent) : -1;

 data = kmalloc_node(rx_buf_sz, GFP_KERNEL, node);
 if (!data)
  return ((void*)0);

 if (rtl8169_align(data) != data) {
  kfree(data);
  data = kmalloc_node(rx_buf_sz + 15, GFP_KERNEL, node);
  if (!data)
   return ((void*)0);
 }

 mapping = dma_map_single(d, rtl8169_align(data), rx_buf_sz,
     DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(d, mapping))) {
  if (net_ratelimit())
   netif_err(tp, drv, tp->dev, "Failed to map RX DMA!\n");
  goto err_out;
 }

 rtl8169_map_to_asic(desc, mapping, rx_buf_sz);
 return data;

err_out:
 kfree(data);
 return ((void*)0);
}
