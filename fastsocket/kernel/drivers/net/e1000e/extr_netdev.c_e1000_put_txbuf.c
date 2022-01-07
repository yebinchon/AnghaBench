
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_ring {struct e1000_adapter* adapter; } ;
struct e1000_buffer {scalar_t__ time_stamp; int * skb; int dma; int length; scalar_t__ mapped_as_page; } ;
struct e1000_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;

__attribute__((used)) static void e1000_put_txbuf(struct e1000_ring *tx_ring,
       struct e1000_buffer *buffer_info)
{
 struct e1000_adapter *adapter = tx_ring->adapter;

 if (buffer_info->dma) {
  if (buffer_info->mapped_as_page)
   dma_unmap_page(&adapter->pdev->dev, buffer_info->dma,
           buffer_info->length, DMA_TO_DEVICE);
  else
   dma_unmap_single(&adapter->pdev->dev, buffer_info->dma,
      buffer_info->length, DMA_TO_DEVICE);
  buffer_info->dma = 0;
 }
 if (buffer_info->skb) {
  dev_kfree_skb_any(buffer_info->skb);
  buffer_info->skb = ((void*)0);
 }
 buffer_info->time_stamp = 0;
}
