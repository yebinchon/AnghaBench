
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ep93xx_priv {int descs_dma_addr; TYPE_3__* descs; int ** tx_buf; int ** rx_buf; } ;
struct ep93xx_descs {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {TYPE_2__* tdesc; TYPE_1__* rdesc; } ;
struct TYPE_5__ {scalar_t__ buf_addr; } ;
struct TYPE_4__ {scalar_t__ buf_addr; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int PAGE_SIZE ;
 int RX_QUEUE_ENTRIES ;
 int TX_QUEUE_ENTRIES ;
 int dma_free_coherent (int *,int,TYPE_3__*,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void ep93xx_free_buffers(struct ep93xx_priv *ep)
{
 int i;

 for (i = 0; i < RX_QUEUE_ENTRIES; i += 2) {
  dma_addr_t d;

  d = ep->descs->rdesc[i].buf_addr;
  if (d)
   dma_unmap_single(((void*)0), d, PAGE_SIZE, DMA_FROM_DEVICE);

  if (ep->rx_buf[i] != ((void*)0))
   free_page((unsigned long)ep->rx_buf[i]);
 }

 for (i = 0; i < TX_QUEUE_ENTRIES; i += 2) {
  dma_addr_t d;

  d = ep->descs->tdesc[i].buf_addr;
  if (d)
   dma_unmap_single(((void*)0), d, PAGE_SIZE, DMA_TO_DEVICE);

  if (ep->tx_buf[i] != ((void*)0))
   free_page((unsigned long)ep->tx_buf[i]);
 }

 dma_free_coherent(((void*)0), sizeof(struct ep93xx_descs), ep->descs,
       ep->descs_dma_addr);
}
