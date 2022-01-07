
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnx4008_dma_config {int is_ll; void* dest_addr; void* src_addr; void* ll_dma; void* ch_ctrl; void* ch_cfg; } ;
struct TYPE_2__ {int name; } ;


 int DMAC_Cx_CONFIG (int) ;
 int DMAC_Cx_CONTROL (int) ;
 int DMAC_Cx_DEST_ADDR (int) ;
 int DMAC_Cx_LLI (int) ;
 int DMAC_Cx_SRC_ADDR (int) ;
 int EINVAL ;
 int VALID_CHANNEL (int) ;
 void* __raw_readl (int ) ;
 TYPE_1__* dma_channels ;
 int pnx4008_dma_lock () ;
 int pnx4008_dma_unlock () ;

int pnx4008_channel_get_config(int ch, struct pnx4008_dma_config * config)
{
 if (!VALID_CHANNEL(ch) || !dma_channels[ch].name || !config)
  return -EINVAL;

 pnx4008_dma_lock();
 config->ch_cfg = __raw_readl(DMAC_Cx_CONFIG(ch));
 config->ch_ctrl = __raw_readl(DMAC_Cx_CONTROL(ch));

 config->ll_dma = __raw_readl(DMAC_Cx_LLI(ch));
 config->is_ll = config->ll_dma ? 1 : 0;

 config->src_addr = __raw_readl(DMAC_Cx_SRC_ADDR(ch));
 config->dest_addr = __raw_readl(DMAC_Cx_DEST_ADDR(ch));
 pnx4008_dma_unlock();

 return 0;
}
