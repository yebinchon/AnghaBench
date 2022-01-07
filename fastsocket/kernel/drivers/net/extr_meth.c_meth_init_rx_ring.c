
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct meth_private {scalar_t__ rx_write; int * rx_ring_dmas; int ** rx_ring; TYPE_2__** rx_skbs; } ;
typedef int rx_packet ;
struct TYPE_5__ {int rx_fifo; } ;
struct TYPE_7__ {TYPE_1__ eth; } ;
struct TYPE_6__ {scalar_t__ head; } ;


 int DMA_FROM_DEVICE ;
 int METH_RX_BUFF_SIZE ;
 int METH_RX_HEAD ;
 int RX_RING_ENTRIES ;
 TYPE_2__* alloc_skb (int ,int ) ;
 int dma_map_single (int *,int *,int ,int ) ;
 TYPE_3__* mace ;
 int skb_reserve (TYPE_2__*,int ) ;

__attribute__((used)) static int meth_init_rx_ring(struct meth_private *priv)
{
 int i;

 for (i = 0; i < RX_RING_ENTRIES; i++) {
  priv->rx_skbs[i] = alloc_skb(METH_RX_BUFF_SIZE, 0);


  skb_reserve(priv->rx_skbs[i],METH_RX_HEAD);
  priv->rx_ring[i]=(rx_packet*)(priv->rx_skbs[i]->head);

  priv->rx_ring_dmas[i] =
   dma_map_single(((void*)0), priv->rx_ring[i],
           METH_RX_BUFF_SIZE, DMA_FROM_DEVICE);
  mace->eth.rx_fifo = priv->rx_ring_dmas[i];
 }
        priv->rx_write = 0;
 return 0;
}
