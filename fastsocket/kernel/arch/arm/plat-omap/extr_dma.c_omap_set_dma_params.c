
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dma_channel_params {scalar_t__ write_prio; scalar_t__ read_prio; int dst_fi; int dst_ei; int dst_start; int dst_amode; int dst_port; int src_fi; int src_ei; int src_start; int src_amode; int src_port; int src_or_dst_synch; int trigger; int sync_mode; int frame_count; int elem_count; int data_type; } ;


 int omap_dma_set_prio_lch (int,scalar_t__,scalar_t__) ;
 int omap_set_dma_dest_params (int,int ,int ,int ,int ,int ) ;
 int omap_set_dma_src_params (int,int ,int ,int ,int ,int ) ;
 int omap_set_dma_transfer_params (int,int ,int ,int ,int ,int ,int ) ;

void omap_set_dma_params(int lch, struct omap_dma_channel_params *params)
{
 omap_set_dma_transfer_params(lch, params->data_type,
         params->elem_count, params->frame_count,
         params->sync_mode, params->trigger,
         params->src_or_dst_synch);
 omap_set_dma_src_params(lch, params->src_port,
    params->src_amode, params->src_start,
    params->src_ei, params->src_fi);

 omap_set_dma_dest_params(lch, params->dst_port,
     params->dst_amode, params->dst_start,
     params->dst_ei, params->dst_fi);
 if (params->read_prio || params->write_prio)
  omap_dma_set_prio_lch(lch, params->read_prio,
          params->write_prio);
}
