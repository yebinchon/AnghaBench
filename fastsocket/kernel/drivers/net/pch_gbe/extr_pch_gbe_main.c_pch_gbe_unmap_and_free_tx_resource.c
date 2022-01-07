
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_buffer {int mapped; int * skb; int length; int dma; } ;
struct pch_gbe_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_single (int *,int ,int ,int ) ;

__attribute__((used)) static void pch_gbe_unmap_and_free_tx_resource(
 struct pch_gbe_adapter *adapter, struct pch_gbe_buffer *buffer_info)
{
 if (buffer_info->mapped) {
  dma_unmap_single(&adapter->pdev->dev, buffer_info->dma,
     buffer_info->length, DMA_TO_DEVICE);
  buffer_info->mapped = 0;
 }
 if (buffer_info->skb) {
  dev_kfree_skb_any(buffer_info->skb);
  buffer_info->skb = ((void*)0);
 }
}
