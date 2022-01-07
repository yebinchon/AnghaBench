
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_tx_ring {int num_desc; struct netxen_cmd_buffer* cmd_buf_arr; } ;
struct netxen_skb_frag {long long dma; int length; } ;
struct netxen_cmd_buffer {int frag_count; int * skb; struct netxen_skb_frag* frag_array; } ;
struct netxen_adapter {int pdev; struct nx_host_tx_ring* tx_ring; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (int *) ;
 int pci_unmap_page (int ,long long,int ,int ) ;
 int pci_unmap_single (int ,long long,int ,int ) ;

void netxen_release_tx_buffers(struct netxen_adapter *adapter)
{
 struct netxen_cmd_buffer *cmd_buf;
 struct netxen_skb_frag *buffrag;
 int i, j;
 struct nx_host_tx_ring *tx_ring = adapter->tx_ring;

 cmd_buf = tx_ring->cmd_buf_arr;
 for (i = 0; i < tx_ring->num_desc; i++) {
  buffrag = cmd_buf->frag_array;
  if (buffrag->dma) {
   pci_unmap_single(adapter->pdev, buffrag->dma,
      buffrag->length, PCI_DMA_TODEVICE);
   buffrag->dma = 0ULL;
  }
  for (j = 0; j < cmd_buf->frag_count; j++) {
   buffrag++;
   if (buffrag->dma) {
    pci_unmap_page(adapter->pdev, buffrag->dma,
            buffrag->length,
            PCI_DMA_TODEVICE);
    buffrag->dma = 0ULL;
   }
  }
  if (cmd_buf->skb) {
   dev_kfree_skb_any(cmd_buf->skb);
   cmd_buf->skb = ((void*)0);
  }
  cmd_buf++;
 }
}
