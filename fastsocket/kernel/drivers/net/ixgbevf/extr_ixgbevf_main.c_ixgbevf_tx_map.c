
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skb_frag_struct {scalar_t__ size; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct ixgbevf_tx_buffer {unsigned int length; int mapped_as_page; scalar_t__ dma; struct sk_buff* skb; } ;
struct ixgbevf_ring {int next_to_use; int count; struct ixgbevf_tx_buffer* tx_buffer_info; int dev; } ;
struct TYPE_2__ {unsigned int nr_frags; struct skb_frag_struct* frags; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ IXGBE_MAX_DATA_PER_TXD ;
 int dev_err (int ,char*) ;
 scalar_t__ dma_map_single (int ,scalar_t__,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int ixgbevf_unmap_and_free_tx_resource (struct ixgbevf_ring*,struct ixgbevf_tx_buffer*) ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ skb_frag_dma_map (int ,struct skb_frag_struct*,unsigned int,unsigned int,int ) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int ixgbevf_tx_map(struct ixgbevf_ring *tx_ring,
     struct sk_buff *skb, u32 tx_flags)
{
 struct ixgbevf_tx_buffer *tx_buffer_info;
 unsigned int len;
 unsigned int total = skb->len;
 unsigned int offset = 0, size;
 int count = 0;
 unsigned int nr_frags = skb_shinfo(skb)->nr_frags;
 unsigned int f;
 int i;

 i = tx_ring->next_to_use;

 len = min(skb_headlen(skb), total);
 while (len) {
  tx_buffer_info = &tx_ring->tx_buffer_info[i];
  size = min(len, (unsigned int)IXGBE_MAX_DATA_PER_TXD);

  tx_buffer_info->length = size;
  tx_buffer_info->mapped_as_page = 0;
  tx_buffer_info->dma = dma_map_single(tx_ring->dev,
           skb->data + offset,
           size, DMA_TO_DEVICE);
  if (dma_mapping_error(tx_ring->dev, tx_buffer_info->dma))
   goto dma_error;

  len -= size;
  total -= size;
  offset += size;
  count++;
  i++;
  if (i == tx_ring->count)
   i = 0;
 }

 for (f = 0; f < nr_frags; f++) {
  struct skb_frag_struct *frag;

  frag = &skb_shinfo(skb)->frags[f];
  len = min((unsigned int)frag->size, total);
  offset = 0;

  while (len) {
   tx_buffer_info = &tx_ring->tx_buffer_info[i];
   size = min(len, (unsigned int)IXGBE_MAX_DATA_PER_TXD);

   tx_buffer_info->length = size;
   tx_buffer_info->dma =
    skb_frag_dma_map(tx_ring->dev, frag,
       offset, size, DMA_TO_DEVICE);
   if (dma_mapping_error(tx_ring->dev,
           tx_buffer_info->dma))
    goto dma_error;
   tx_buffer_info->mapped_as_page = 1;

   len -= size;
   total -= size;
   offset += size;
   count++;
   i++;
   if (i == tx_ring->count)
    i = 0;
  }
  if (total == 0)
   break;
 }

 if (i == 0)
  i = tx_ring->count - 1;
 else
  i = i - 1;
 tx_ring->tx_buffer_info[i].skb = skb;

 return count;

dma_error:
 dev_err(tx_ring->dev, "TX DMA map failed\n");


 tx_buffer_info->dma = 0;
 count--;


 while (count >= 0) {
  count--;
  i--;
  if (i < 0)
   i += tx_ring->count;
  tx_buffer_info = &tx_ring->tx_buffer_info[i];
  ixgbevf_unmap_and_free_tx_resource(tx_ring, tx_buffer_info);
 }

 return count;
}
