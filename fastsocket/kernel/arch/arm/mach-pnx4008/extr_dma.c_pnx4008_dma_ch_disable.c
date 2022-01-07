
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int DMAC_Cx_CONFIG (int) ;
 int EINVAL ;
 int VALID_CHANNEL (int) ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 TYPE_1__* dma_channels ;
 int pnx4008_dma_lock () ;
 int pnx4008_dma_unlock () ;

int pnx4008_dma_ch_disable(int ch)
{
 unsigned long ch_cfg;

 if (!VALID_CHANNEL(ch) || !dma_channels[ch].name)
  return -EINVAL;

 pnx4008_dma_lock();
 ch_cfg = __raw_readl(DMAC_Cx_CONFIG(ch));
 ch_cfg &= ~1;
 __raw_writel(ch_cfg, DMAC_Cx_CONFIG(ch));
 pnx4008_dma_unlock();

 return 0;
}
