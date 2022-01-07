
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int data_len; int data; } ;
struct efx_tx_queue {unsigned int write_count; unsigned int insert_count; unsigned int ptr_mask; struct efx_tx_buffer* buffer; int queue; struct efx_nic* efx; } ;
struct efx_tx_buffer {int flags; int len; int unmap_len; unsigned int dma_addr; struct sk_buff* skb; } ;
struct efx_nic {int net_dev; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
typedef unsigned int dma_addr_t ;
struct TYPE_4__ {int nr_frags; int * frags; scalar_t__ gso_size; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_TO_DEVICE ;
 int EFX_BUG_ON_PARANOID (int) ;
 unsigned short EFX_TX_BUF_CONT ;
 unsigned short EFX_TX_BUF_MAP_SINGLE ;
 unsigned short EFX_TX_BUF_SKB ;
 scalar_t__ EFX_WORKAROUND_15592 (struct efx_nic*) ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 unsigned int dma_map_single (struct device*,int ,unsigned int,int ) ;
 int dma_mapping_error (struct device*,unsigned int) ;
 int dma_unmap_page (struct device*,unsigned int,unsigned int,int ) ;
 int dma_unmap_single (struct device*,unsigned int,unsigned int,int ) ;
 int efx_dequeue_buffer (struct efx_tx_queue*,struct efx_tx_buffer*) ;
 int efx_enqueue_skb_tso (struct efx_tx_queue*,struct sk_buff*) ;
 unsigned int efx_max_tx_len (struct efx_nic*,unsigned int) ;
 int efx_nic_push_buffers (struct efx_tx_queue*) ;
 int efx_tx_maybe_stop_queue (struct efx_tx_queue*) ;
 scalar_t__ likely (int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,unsigned int,int) ;
 unsigned int skb_frag_dma_map (struct device*,int *,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_pad (struct sk_buff*,unsigned int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int tx_err ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t efx_enqueue_skb(struct efx_tx_queue *tx_queue, struct sk_buff *skb)
{
 struct efx_nic *efx = tx_queue->efx;
 struct device *dma_dev = &efx->pci_dev->dev;
 struct efx_tx_buffer *buffer;
 skb_frag_t *fragment;
 unsigned int len, unmap_len = 0, insert_ptr;
 dma_addr_t dma_addr, unmap_addr = 0;
 unsigned int dma_len;
 unsigned short dma_flags;
 int i = 0;

 EFX_BUG_ON_PARANOID(tx_queue->write_count != tx_queue->insert_count);

 if (skb_shinfo(skb)->gso_size)
  return efx_enqueue_skb_tso(tx_queue, skb);


 len = skb_headlen(skb);


 if (EFX_WORKAROUND_15592(efx) && skb->len <= 32) {
  EFX_BUG_ON_PARANOID(skb->data_len);
  len = 32 + 1;
  if (skb_pad(skb, len - skb->len))
   return NETDEV_TX_OK;
 }





 dma_flags = EFX_TX_BUF_MAP_SINGLE;
 dma_addr = dma_map_single(dma_dev, skb->data, len, PCI_DMA_TODEVICE);


 while (1) {
  if (unlikely(dma_mapping_error(dma_dev, dma_addr)))
   goto dma_err;



  unmap_len = len;
  unmap_addr = dma_addr;


  do {
   insert_ptr = tx_queue->insert_count & tx_queue->ptr_mask;
   buffer = &tx_queue->buffer[insert_ptr];
   EFX_BUG_ON_PARANOID(buffer->flags);
   EFX_BUG_ON_PARANOID(buffer->len);
   EFX_BUG_ON_PARANOID(buffer->unmap_len);

   dma_len = efx_max_tx_len(efx, dma_addr);
   if (likely(dma_len >= len))
    dma_len = len;


   buffer->len = dma_len;
   buffer->dma_addr = dma_addr;
   buffer->flags = EFX_TX_BUF_CONT;
   len -= dma_len;
   dma_addr += dma_len;
   ++tx_queue->insert_count;
  } while (len);


  buffer->flags = EFX_TX_BUF_CONT | dma_flags;
  buffer->unmap_len = unmap_len;
  unmap_len = 0;


  if (i >= skb_shinfo(skb)->nr_frags)
   break;
  fragment = &skb_shinfo(skb)->frags[i];
  len = skb_frag_size(fragment);
  i++;

  dma_flags = 0;
  dma_addr = skb_frag_dma_map(dma_dev, fragment, 0, len,
         DMA_TO_DEVICE);
 }


 buffer->skb = skb;
 buffer->flags = EFX_TX_BUF_SKB | dma_flags;


 efx_nic_push_buffers(tx_queue);

 efx_tx_maybe_stop_queue(tx_queue);

 return NETDEV_TX_OK;

 dma_err:
 netif_err(efx, tx_err, efx->net_dev,
    " TX queue %d could not map skb with %d bytes %d "
    "fragments for DMA\n", tx_queue->queue, skb->len,
    skb_shinfo(skb)->nr_frags + 1);


 dev_kfree_skb_any(skb);


 while (tx_queue->insert_count != tx_queue->write_count) {
  --tx_queue->insert_count;
  insert_ptr = tx_queue->insert_count & tx_queue->ptr_mask;
  buffer = &tx_queue->buffer[insert_ptr];
  efx_dequeue_buffer(tx_queue, buffer);
 }


 if (unmap_len) {
  if (dma_flags & EFX_TX_BUF_MAP_SINGLE)
   dma_unmap_single(dma_dev, unmap_addr, unmap_len,
      DMA_TO_DEVICE);
  else
   dma_unmap_page(dma_dev, unmap_addr, unmap_len,
           DMA_TO_DEVICE);
 }

 return NETDEV_TX_OK;
}
