
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_2__ {unsigned long addr; int data_type; void* yres; void* xres; } ;


 TYPE_1__ lcd_dma ;

void omap_set_lcd_dma_b1(unsigned long addr, u16 fb_xres, u16 fb_yres,
    int data_type)
{
 lcd_dma.addr = addr;
 lcd_dma.data_type = data_type;
 lcd_dma.xres = fb_xres;
 lcd_dma.yres = fb_yres;
}
