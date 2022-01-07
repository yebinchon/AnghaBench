
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src_port; } ;


 TYPE_1__ lcd_dma ;

void omap_set_lcd_dma_src_port(int port)
{
 lcd_dma.src_port = port;
}
