
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CICR (int) ;
 scalar_t__ cpu_class_is_omap2 () ;
 int dma_write (int ,int ) ;

__attribute__((used)) static void omap_disable_channel_irq(int lch)
{
 if (cpu_class_is_omap2())
  dma_write(0, CICR(lch));
}
