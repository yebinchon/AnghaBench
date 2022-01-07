
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMAC_CONFIG ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int pnx4008_dma_lock () ;
 int pnx4008_dma_unlock () ;

int pnx4008_config_dma(int ahb_m1_be, int ahb_m2_be, int enable)
{
 unsigned long dma_cfg = __raw_readl(DMAC_CONFIG);

 switch (ahb_m1_be) {
 case 0:
  dma_cfg &= ~(1 << 1);
  break;
 case 1:
  dma_cfg |= (1 << 1);
  break;
 default:
  break;
 }

 switch (ahb_m2_be) {
 case 0:
  dma_cfg &= ~(1 << 2);
  break;
 case 1:
  dma_cfg |= (1 << 2);
  break;
 default:
  break;
 }

 switch (enable) {
 case 0:
  dma_cfg &= ~(1 << 0);
  break;
 case 1:
  dma_cfg |= (1 << 0);
  break;
 default:
  break;
 }

 pnx4008_dma_lock();
 __raw_writel(dma_cfg, DMAC_CONFIG);
 pnx4008_dma_unlock();

 return 0;
}
