
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int enabled_irqs; } ;


 TYPE_1__* dma_chan ;

void omap_disable_dma_irq(int lch, u16 bits)
{
 dma_chan[lch].enabled_irqs &= ~bits;
}
