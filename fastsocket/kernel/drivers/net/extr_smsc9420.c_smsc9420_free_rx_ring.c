
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smsc9420_pdata {scalar_t__ rx_ring_tail; scalar_t__ rx_ring_head; TYPE_2__* rx_buffers; TYPE_1__* rx_ring; int pdev; } ;
struct TYPE_4__ {scalar_t__ mapping; scalar_t__ skb; } ;
struct TYPE_3__ {scalar_t__ buffer2; scalar_t__ buffer1; scalar_t__ length; scalar_t__ status; } ;


 int BUG_ON (int) ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int dev_kfree_skb_any (scalar_t__) ;
 int kfree (TYPE_2__*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void smsc9420_free_rx_ring(struct smsc9420_pdata *pd)
{
 int i;

 BUG_ON(!pd->rx_ring);

 if (!pd->rx_buffers)
  return;

 for (i = 0; i < RX_RING_SIZE; i++) {
  if (pd->rx_buffers[i].skb)
   dev_kfree_skb_any(pd->rx_buffers[i].skb);

  if (pd->rx_buffers[i].mapping)
   pci_unmap_single(pd->pdev, pd->rx_buffers[i].mapping,
    PKT_BUF_SZ, PCI_DMA_FROMDEVICE);

  pd->rx_ring[i].status = 0;
  pd->rx_ring[i].length = 0;
  pd->rx_ring[i].buffer1 = 0;
  pd->rx_ring[i].buffer2 = 0;
 }
 wmb();

 kfree(pd->rx_buffers);
 pd->rx_buffers = ((void*)0);

 pd->rx_ring_head = 0;
 pd->rx_ring_tail = 0;
}
