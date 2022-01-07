
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnx4008_dma_config {int ch_cfg; int ch_ctrl; int ll_dma; scalar_t__ is_ll; int dest_addr; int src_addr; } ;
struct TYPE_2__ {int name; } ;


 int DMAC_Cx_CONFIG (int) ;
 int DMAC_Cx_CONTROL (int) ;
 int DMAC_Cx_DEST_ADDR (int) ;
 int DMAC_Cx_LLI (int) ;
 int DMAC_Cx_SRC_ADDR (int) ;
 int EINVAL ;
 int VALID_CHANNEL (int) ;
 int __raw_writel (int ,int ) ;
 TYPE_1__* dma_channels ;
 int pnx4008_dma_lock () ;
 int pnx4008_dma_unlock () ;

int pnx4008_config_channel(int ch, struct pnx4008_dma_config * config)
{
 if (!VALID_CHANNEL(ch) || !dma_channels[ch].name)
  return -EINVAL;

 pnx4008_dma_lock();
 __raw_writel(config->src_addr, DMAC_Cx_SRC_ADDR(ch));
 __raw_writel(config->dest_addr, DMAC_Cx_DEST_ADDR(ch));

 if (config->is_ll)
  __raw_writel(config->ll_dma, DMAC_Cx_LLI(ch));
 else
  __raw_writel(0, DMAC_Cx_LLI(ch));

 __raw_writel(config->ch_ctrl, DMAC_Cx_CONTROL(ch));
 __raw_writel(config->ch_cfg, DMAC_Cx_CONFIG(ch));
 pnx4008_dma_unlock();

 return 0;

}
