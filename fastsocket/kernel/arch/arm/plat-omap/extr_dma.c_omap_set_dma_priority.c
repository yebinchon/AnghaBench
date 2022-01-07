
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int CCR (int) ;




 unsigned long OMAP_TC_EMIFF_PRIOR ;
 unsigned long OMAP_TC_EMIFS_PRIOR ;
 unsigned long OMAP_TC_OCPT1_PRIOR ;
 unsigned long OMAP_TC_OCPT2_PRIOR ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;
 int omap_readl (unsigned long) ;
 int omap_writel (int,unsigned long) ;

void omap_set_dma_priority(int lch, int dst_port, int priority)
{
 unsigned long reg;
 u32 l;

 if (cpu_class_is_omap1()) {
  switch (dst_port) {
  case 129:
   reg = OMAP_TC_OCPT1_PRIOR;
   break;
  case 128:
   reg = OMAP_TC_OCPT2_PRIOR;
   break;
  case 131:
   reg = OMAP_TC_EMIFF_PRIOR;
   break;
  case 130:
   reg = OMAP_TC_EMIFS_PRIOR;
   break;
  default:
   BUG();
   return;
  }
  l = omap_readl(reg);
  l &= ~(0xf << 8);
  l |= (priority & 0xf) << 8;
  omap_writel(l, reg);
 }

 if (cpu_class_is_omap2()) {
  u32 ccr;

  ccr = dma_read(CCR(lch));
  if (priority)
   ccr |= (1 << 6);
  else
   ccr &= ~(1 << 6);
  dma_write(ccr, CCR(lch));
 }
}
