
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_frag_struct {unsigned int size; } ;
struct sk_buff {unsigned int data; unsigned int len; int data_len; } ;
struct pci_dev {int dev; } ;
struct e1000_tx_ring {unsigned int next_to_use; int last_tx_tso; unsigned int count; struct e1000_buffer* buffer_info; } ;
struct e1000_hw {scalar_t__ bus_type; } ;
struct e1000_buffer {unsigned int length; int mapped_as_page; unsigned int next_to_watch; unsigned int segs; unsigned int bytecount; scalar_t__ dma; struct sk_buff* skb; void* time_stamp; } ;
struct e1000_adapter {scalar_t__ pcix_82544; struct pci_dev* pdev; struct e1000_hw hw; } ;
struct TYPE_2__ {scalar_t__ gso_segs; struct skb_frag_struct* frags; } ;


 int DMA_TO_DEVICE ;
 int dev_err (int *,char*) ;
 scalar_t__ dma_map_single (int *,unsigned int,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 scalar_t__ e1000_bus_type_pcix ;
 int e1000_unmap_and_free_tx_resource (struct e1000_adapter*,struct e1000_buffer*) ;
 void* jiffies ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ page_to_phys (int ) ;
 scalar_t__ skb_frag_dma_map (int *,struct skb_frag_struct*,unsigned int,unsigned int,int ) ;
 int skb_frag_page (struct skb_frag_struct*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int e1000_tx_map(struct e1000_adapter *adapter,
   struct e1000_tx_ring *tx_ring,
   struct sk_buff *skb, unsigned int first,
   unsigned int max_per_txd, unsigned int nr_frags,
   unsigned int mss)
{
 struct e1000_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_buffer *buffer_info;
 unsigned int len = skb_headlen(skb);
 unsigned int offset = 0, size, count = 0, i;
 unsigned int f, bytecount, segs;

 i = tx_ring->next_to_use;

 while (len) {
  buffer_info = &tx_ring->buffer_info[i];
  size = min(len, max_per_txd);




  if (!skb->data_len && tx_ring->last_tx_tso &&
      !skb_is_gso(skb)) {
   tx_ring->last_tx_tso = 0;
   size -= 4;
  }



  if (unlikely(mss && !nr_frags && size == len && size > 8))
   size -= 4;





  if (unlikely((hw->bus_type == e1000_bus_type_pcix) &&
                  (size > 2015) && count == 0))
          size = 2015;



  if (unlikely(adapter->pcix_82544 &&
     !((unsigned long)(skb->data + offset + size - 1) & 4) &&
     size > 4))
   size -= 4;

  buffer_info->length = size;

  buffer_info->time_stamp = jiffies;
  buffer_info->mapped_as_page = 0;
  buffer_info->dma = dma_map_single(&pdev->dev,
        skb->data + offset,
        size, DMA_TO_DEVICE);
  if (dma_mapping_error(&pdev->dev, buffer_info->dma))
   goto dma_error;
  buffer_info->next_to_watch = i;

  len -= size;
  offset += size;
  count++;
  if (len) {
   i++;
   if (unlikely(i == tx_ring->count))
    i = 0;
  }
 }

 for (f = 0; f < nr_frags; f++) {
  struct skb_frag_struct *frag;

  frag = &skb_shinfo(skb)->frags[f];
  len = frag->size;
  offset = 0;

  while (len) {
   unsigned long bufend;
   i++;
   if (unlikely(i == tx_ring->count))
    i = 0;

   buffer_info = &tx_ring->buffer_info[i];
   size = min(len, max_per_txd);


   if (unlikely(mss && f == (nr_frags-1) && size == len && size > 8))
    size -= 4;



   bufend = (unsigned long)
    page_to_phys(skb_frag_page(frag));
   bufend += offset + size - 1;
   if (unlikely(adapter->pcix_82544 &&
         !(bufend & 4) &&
         size > 4))
    size -= 4;

   buffer_info->length = size;
   buffer_info->time_stamp = jiffies;
   buffer_info->mapped_as_page = 1;
   buffer_info->dma = skb_frag_dma_map(&pdev->dev, frag,
      offset, size, DMA_TO_DEVICE);
   if (dma_mapping_error(&pdev->dev, buffer_info->dma))
    goto dma_error;
   buffer_info->next_to_watch = i;

   len -= size;
   offset += size;
   count++;
  }
 }

 segs = skb_shinfo(skb)->gso_segs ?: 1;

 bytecount = ((segs - 1) * skb_headlen(skb)) + skb->len;

 tx_ring->buffer_info[i].skb = skb;
 tx_ring->buffer_info[i].segs = segs;
 tx_ring->buffer_info[i].bytecount = bytecount;
 tx_ring->buffer_info[first].next_to_watch = i;

 return count;

dma_error:
 dev_err(&pdev->dev, "TX DMA map failed\n");
 buffer_info->dma = 0;
 if (count)
  count--;

 while (count--) {
  if (i==0)
   i += tx_ring->count;
  i--;
  buffer_info = &tx_ring->buffer_info[i];
  e1000_unmap_and_free_tx_resource(adapter, buffer_info);
 }

 return 0;
}
