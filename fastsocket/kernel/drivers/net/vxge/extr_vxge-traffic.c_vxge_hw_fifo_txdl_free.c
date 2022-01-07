
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vxge_hw_fifo_txd {int dummy; } ;
struct __vxge_hw_fifo_txdl_priv {int dummy; } ;
struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_fifo {TYPE_1__* config; struct __vxge_hw_channel channel; } ;
struct TYPE_2__ {int max_frags; } ;


 struct __vxge_hw_fifo_txdl_priv* __vxge_hw_fifo_txdl_priv (struct __vxge_hw_fifo*,struct vxge_hw_fifo_txd*) ;
 int vxge_hw_channel_dtr_free (struct __vxge_hw_channel*,void*) ;

void vxge_hw_fifo_txdl_free(struct __vxge_hw_fifo *fifo, void *txdlh)
{
 struct __vxge_hw_fifo_txdl_priv *txdl_priv;
 u32 max_frags;
 struct __vxge_hw_channel *channel;

 channel = &fifo->channel;

 txdl_priv = __vxge_hw_fifo_txdl_priv(fifo,
   (struct vxge_hw_fifo_txd *)txdlh);

 max_frags = fifo->config->max_frags;

 vxge_hw_channel_dtr_free(channel, txdlh);
}
