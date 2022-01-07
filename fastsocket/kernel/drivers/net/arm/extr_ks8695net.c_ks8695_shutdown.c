
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ks8695_priv {int rx_irq; int tx_irq; int link_irq; TYPE_4__* rx_buffers; int dev; TYPE_3__* rx_ring; TYPE_2__* tx_buffers; TYPE_1__* tx_ring; int ndev; } ;
struct TYPE_8__ {int * skb; int length; int dma_ptr; } ;
struct TYPE_7__ {scalar_t__ data_ptr; scalar_t__ status; } ;
struct TYPE_6__ {int * skb; int length; int dma_ptr; } ;
struct TYPE_5__ {scalar_t__ data_ptr; scalar_t__ status; scalar_t__ owner; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int DRXC_RE ;
 int DTXC_TE ;
 int KS8695_DRXC ;
 int KS8695_DTXC ;
 int MAX_RX_DESC ;
 int MAX_TX_DESC ;
 int dev_kfree_skb_irq (int *) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_irq (int,int ) ;
 int ks8695_readreg (struct ks8695_priv*,int ) ;
 int ks8695_writereg (struct ks8695_priv*,int ,int) ;

__attribute__((used)) static void
ks8695_shutdown(struct ks8695_priv *ksp)
{
 u32 ctrl;
 int buff_n;


 ctrl = ks8695_readreg(ksp, KS8695_DTXC);
 ks8695_writereg(ksp, KS8695_DTXC, ctrl & ~DTXC_TE);


 ctrl = ks8695_readreg(ksp, KS8695_DRXC);
 ks8695_writereg(ksp, KS8695_DRXC, ctrl & ~DRXC_RE);


 free_irq(ksp->rx_irq, ksp->ndev);
 free_irq(ksp->tx_irq, ksp->ndev);
 if (ksp->link_irq != -1)
  free_irq(ksp->link_irq, ksp->ndev);


 for (buff_n = 0; buff_n < MAX_TX_DESC; ++buff_n) {
  if (ksp->tx_buffers[buff_n].skb) {

   ksp->tx_ring[buff_n].owner = 0;
   ksp->tx_ring[buff_n].status = 0;
   ksp->tx_ring[buff_n].data_ptr = 0;


   dma_unmap_single(ksp->dev,
      ksp->tx_buffers[buff_n].dma_ptr,
      ksp->tx_buffers[buff_n].length,
      DMA_TO_DEVICE);
   dev_kfree_skb_irq(ksp->tx_buffers[buff_n].skb);
   ksp->tx_buffers[buff_n].skb = ((void*)0);
  }
 }


 for (buff_n = 0; buff_n < MAX_RX_DESC; ++buff_n) {
  if (ksp->rx_buffers[buff_n].skb) {

   ksp->rx_ring[buff_n].status = 0;
   ksp->rx_ring[buff_n].data_ptr = 0;


   dma_unmap_single(ksp->dev,
      ksp->rx_buffers[buff_n].dma_ptr,
      ksp->rx_buffers[buff_n].length,
      DMA_FROM_DEVICE);
   dev_kfree_skb_irq(ksp->rx_buffers[buff_n].skb);
   ksp->rx_buffers[buff_n].skb = ((void*)0);
  }
 }
}
