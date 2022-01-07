
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum omap_dma_color_mode { ____Placeholder_omap_dma_color_mode } omap_dma_color_mode ;


 int BUG () ;
 int BUG_ON (int ) ;
 int CCR (int) ;
 int CCR2 (int) ;
 int COLOR (int) ;
 int COLOR_L (int) ;
 int COLOR_U (int) ;
 int LCH_CTRL (int) ;



 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;
 int omap_dma_in_1510_mode () ;

void omap_set_dma_color_mode(int lch, enum omap_dma_color_mode mode, u32 color)
{
 BUG_ON(omap_dma_in_1510_mode());

 if (cpu_class_is_omap1()) {
  u16 w;

  w = dma_read(CCR2(lch));
  w &= ~0x03;

  switch (mode) {
  case 129:
   w |= 0x01;
   break;
  case 128:
   w |= 0x02;
   break;
  case 130:
   break;
  default:
   BUG();
  }
  dma_write(w, CCR2(lch));

  w = dma_read(LCH_CTRL(lch));
  w &= ~0x0f;

  if (mode) {
   dma_write((u16)color, COLOR_L(lch));
   dma_write((u16)(color >> 16), COLOR_U(lch));
   w |= 1;
  }
  dma_write(w, LCH_CTRL(lch));
 }

 if (cpu_class_is_omap2()) {
  u32 val;

  val = dma_read(CCR(lch));
  val &= ~((1 << 17) | (1 << 16));

  switch (mode) {
  case 129:
   val |= 1 << 16;
   break;
  case 128:
   val |= 1 << 17;
   break;
  case 130:
   break;
  default:
   BUG();
  }
  dma_write(val, CCR(lch));

  color &= 0xffffff;
  dma_write(color, COLOR(lch));
 }
}
