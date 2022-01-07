
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxge_hw_fifo_txd {scalar_t__ control_1; scalar_t__ control_0; scalar_t__ host_control; } ;
struct __vxge_hw_fifo_txdl_priv {int alloc_frags; int * next_txdl_priv; scalar_t__ frags; scalar_t__ align_used_frags; int align_vaddr; int align_vaddr_start; scalar_t__ align_dma_offset; } ;
struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_fifo {TYPE_1__* config; struct __vxge_hw_channel channel; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_2__ {int max_frags; } ;


 int VXGE_HW_OK ;
 struct __vxge_hw_fifo_txdl_priv* __vxge_hw_fifo_txdl_priv (struct __vxge_hw_fifo*,struct vxge_hw_fifo_txd*) ;
 int vxge_hw_channel_dtr_alloc (struct __vxge_hw_channel*,void**) ;

enum vxge_hw_status vxge_hw_fifo_txdl_reserve(
 struct __vxge_hw_fifo *fifo,
 void **txdlh, void **txdl_priv)
{
 struct __vxge_hw_channel *channel;
 enum vxge_hw_status status;
 int i;

 channel = &fifo->channel;

 status = vxge_hw_channel_dtr_alloc(channel, txdlh);

 if (status == VXGE_HW_OK) {
  struct vxge_hw_fifo_txd *txdp =
   (struct vxge_hw_fifo_txd *)*txdlh;
  struct __vxge_hw_fifo_txdl_priv *priv;

  priv = __vxge_hw_fifo_txdl_priv(fifo, txdp);


  priv->align_dma_offset = 0;
  priv->align_vaddr_start = priv->align_vaddr;
  priv->align_used_frags = 0;
  priv->frags = 0;
  priv->alloc_frags = fifo->config->max_frags;
  priv->next_txdl_priv = ((void*)0);

  *txdl_priv = (void *)(size_t)txdp->host_control;

  for (i = 0; i < fifo->config->max_frags; i++) {
   txdp = ((struct vxge_hw_fifo_txd *)*txdlh) + i;
   txdp->control_0 = txdp->control_1 = 0;
  }
 }

 return status;
}
