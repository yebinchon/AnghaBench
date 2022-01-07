
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct tg3_rx_prodring_set {struct ring_info* rx_jmb_buffers; TYPE_1__* rx_jmb; struct ring_info* rx_std_buffers; struct tg3_rx_buffer_desc* rx_std; } ;
struct tg3_rx_buffer_desc {int addr_hi; int addr_lo; } ;
struct tg3 {int rx_std_ring_mask; int rx_pkt_map_sz; int rx_jmb_ring_mask; int pdev; } ;
struct skb_shared_info {int dummy; } ;
struct ring_info {int * data; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct tg3_rx_buffer_desc std; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;


 int SKB_DATA_ALIGN (int) ;
 int TG3_RX_JMB_MAP_SZ ;
 int TG3_RX_OFFSET (struct tg3*) ;
 int dma_unmap_addr_set (struct ring_info*,scalar_t__,scalar_t__) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ pci_dma_mapping_error (int ,scalar_t__) ;
 scalar_t__ pci_map_single (int ,int *,int,int ) ;

__attribute__((used)) static int tg3_alloc_rx_data(struct tg3 *tp, struct tg3_rx_prodring_set *tpr,
       u32 opaque_key, u32 dest_idx_unmasked)
{
 struct tg3_rx_buffer_desc *desc;
 struct ring_info *map;
 u8 *data;
 dma_addr_t mapping;
 int skb_size, data_size, dest_idx;

 switch (opaque_key) {
 case 128:
  dest_idx = dest_idx_unmasked & tp->rx_std_ring_mask;
  desc = &tpr->rx_std[dest_idx];
  map = &tpr->rx_std_buffers[dest_idx];
  data_size = tp->rx_pkt_map_sz;
  break;

 case 129:
  dest_idx = dest_idx_unmasked & tp->rx_jmb_ring_mask;
  desc = &tpr->rx_jmb[dest_idx].std;
  map = &tpr->rx_jmb_buffers[dest_idx];
  data_size = TG3_RX_JMB_MAP_SZ;
  break;

 default:
  return -EINVAL;
 }







 skb_size = SKB_DATA_ALIGN(data_size + TG3_RX_OFFSET(tp)) +
     SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 data = kmalloc(skb_size, GFP_ATOMIC);
 if (!data)
  return -ENOMEM;

 mapping = pci_map_single(tp->pdev,
     data + TG3_RX_OFFSET(tp),
     data_size,
     PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(tp->pdev, mapping)) {
  kfree(data);
  return -EIO;
 }

 map->data = data;
 dma_unmap_addr_set(map, mapping, mapping);

 desc->addr_hi = ((u64)mapping >> 32);
 desc->addr_lo = ((u64)mapping & 0xffffffff);

 return data_size;
}
