
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int single_transfer; int active; } ;


 int BUG_ON (int ) ;
 int OMAP1610_DMA_LCD_CCR ;
 int OMAP1610_DMA_LCD_CSDP ;
 int OMAP1610_DMA_LCD_LCH_CTRL ;
 int enable_1510_mode ;
 TYPE_1__ lcd_dma ;
 int omap_readw (int ) ;
 int omap_writew (int,int ) ;
 int set_b1_regs () ;

void omap_setup_lcd_dma(void)
{
 BUG_ON(lcd_dma.active);
 if (!enable_1510_mode) {

  omap_writew(0x5440, OMAP1610_DMA_LCD_CCR);
  omap_writew(0x9102, OMAP1610_DMA_LCD_CSDP);
  omap_writew(0x0004, OMAP1610_DMA_LCD_LCH_CTRL);
 }
 set_b1_regs();
 if (!enable_1510_mode) {
  u16 w;

  w = omap_readw(OMAP1610_DMA_LCD_CCR);





  w |= 1 << 11;
  if (!lcd_dma.single_transfer)
   w |= (3 << 8);
  omap_writew(w, OMAP1610_DMA_LCD_CCR);
 }
}
