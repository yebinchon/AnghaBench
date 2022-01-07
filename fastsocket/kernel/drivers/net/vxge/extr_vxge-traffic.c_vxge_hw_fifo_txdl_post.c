
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vxge_hw_fifo_txd {int control_0; } ;
struct __vxge_hw_fifo_txdl_priv {int frags; scalar_t__ dma_addr; } ;
struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_fifo {TYPE_2__* stats; int no_snoop_bits; struct __vxge_hw_channel channel; } ;
struct TYPE_3__ {scalar_t__ usage_cnt; scalar_t__ usage_max; } ;
struct TYPE_4__ {TYPE_1__ common_stats; int total_posts; } ;


 int VXGE_HW_FIFO_TXD_GATHER_CODE (int ) ;
 int VXGE_HW_FIFO_TXD_GATHER_CODE_LAST ;
 int VXGE_HW_FIFO_TXD_LIST_OWN_ADAPTER ;
 struct __vxge_hw_fifo_txdl_priv* __vxge_hw_fifo_txdl_priv (struct __vxge_hw_fifo*,void*) ;
 int __vxge_hw_non_offload_db_post (struct __vxge_hw_fifo*,int ,int,int ) ;
 int vxge_hw_channel_dtr_post (struct __vxge_hw_channel*,void*) ;

void vxge_hw_fifo_txdl_post(struct __vxge_hw_fifo *fifo, void *txdlh)
{
 struct __vxge_hw_fifo_txdl_priv *txdl_priv;
 struct vxge_hw_fifo_txd *txdp_last;
 struct vxge_hw_fifo_txd *txdp_first;
 struct __vxge_hw_channel *channel;

 channel = &fifo->channel;

 txdl_priv = __vxge_hw_fifo_txdl_priv(fifo, txdlh);
 txdp_first = (struct vxge_hw_fifo_txd *)txdlh;

 txdp_last = (struct vxge_hw_fifo_txd *)txdlh + (txdl_priv->frags - 1);
 txdp_last->control_0 |=
       VXGE_HW_FIFO_TXD_GATHER_CODE(VXGE_HW_FIFO_TXD_GATHER_CODE_LAST);
 txdp_first->control_0 |= VXGE_HW_FIFO_TXD_LIST_OWN_ADAPTER;

 vxge_hw_channel_dtr_post(&fifo->channel, txdlh);

 __vxge_hw_non_offload_db_post(fifo,
  (u64)txdl_priv->dma_addr,
  txdl_priv->frags - 1,
  fifo->no_snoop_bits);

 fifo->stats->total_posts++;
 fifo->stats->common_stats.usage_cnt++;
 if (fifo->stats->common_stats.usage_max <
  fifo->stats->common_stats.usage_cnt)
  fifo->stats->common_stats.usage_max =
   fifo->stats->common_stats.usage_cnt;
}
