
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sw_rx_bd {int * data; } ;
struct bnx2x_fastpath {int rx_buf_size; struct sw_rx_bd* rx_buf_ring; struct bnx2x* bp; } ;
struct bnx2x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int NUM_RX_BD ;
 int bnx2x_frag_free (struct bnx2x_fastpath*,int *) ;
 int dma_unmap_addr (struct sw_rx_bd*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int mapping ;

__attribute__((used)) static void bnx2x_free_rx_bds(struct bnx2x_fastpath *fp)
{
 struct bnx2x *bp = fp->bp;
 int i;


 if (fp->rx_buf_ring == ((void*)0))
  return;

 for (i = 0; i < NUM_RX_BD; i++) {
  struct sw_rx_bd *rx_buf = &fp->rx_buf_ring[i];
  u8 *data = rx_buf->data;

  if (data == ((void*)0))
   continue;
  dma_unmap_single(&bp->pdev->dev,
     dma_unmap_addr(rx_buf, mapping),
     fp->rx_buf_size, DMA_FROM_DEVICE);

  rx_buf->data = ((void*)0);
  bnx2x_frag_free(fp, data);
 }
}
