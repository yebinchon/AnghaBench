
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnx4008_dma_ch_config {unsigned long src_per; unsigned long dest_per; unsigned long ie; unsigned long itc; unsigned long lock; unsigned long active; unsigned long halt; int flow_cntrl; } ;


 int EINVAL ;
 int FC_MEM2MEM_DMA ;
 int FC_MEM2PER_DMA ;
 int FC_MEM2PER_PER ;
 int FC_PER2MEM_DMA ;
 int FC_PER2MEM_PER ;
 int FC_PER2PER_DMA ;
 int FC_PER2PER_DPER ;
 int FC_PER2PER_SPER ;

int pnx4008_dma_parse_config(unsigned long cfg,
        struct pnx4008_dma_ch_config * ch_cfg)
{
 int err = 0;

 if (!ch_cfg) {
  err = -EINVAL;
  goto out;
 }

 cfg >>= 1;

 ch_cfg->src_per = cfg & 0x1f;
 cfg >>= 5;

 ch_cfg->dest_per = cfg & 0x1f;
 cfg >>= 5;

 switch (cfg & 7) {
 case 0:
  ch_cfg->flow_cntrl = FC_MEM2MEM_DMA;
  break;
 case 1:
  ch_cfg->flow_cntrl = FC_MEM2PER_DMA;
  break;
 case 2:
  ch_cfg->flow_cntrl = FC_PER2MEM_DMA;
  break;
 case 3:
  ch_cfg->flow_cntrl = FC_PER2PER_DMA;
  break;
 case 4:
  ch_cfg->flow_cntrl = FC_PER2PER_DPER;
  break;
 case 5:
  ch_cfg->flow_cntrl = FC_MEM2PER_PER;
  break;
 case 6:
  ch_cfg->flow_cntrl = FC_PER2MEM_PER;
  break;
 case 7:
  ch_cfg->flow_cntrl = FC_PER2PER_SPER;
 }
 cfg >>= 3;

 ch_cfg->ie = cfg & 1;
 cfg >>= 1;

 ch_cfg->itc = cfg & 1;
 cfg >>= 1;

 ch_cfg->lock = cfg & 1;
 cfg >>= 1;

 ch_cfg->active = cfg & 1;
 cfg >>= 1;

 ch_cfg->halt = cfg & 1;

out:
 return err;
}
