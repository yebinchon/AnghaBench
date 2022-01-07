
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp_spi {int done; int dma; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int stmp3xxx_dma_clear_interrupt (int ) ;

__attribute__((used)) static irqreturn_t stmp_spi_irq(int irq, void *dev_id)
{
 struct stmp_spi *ss = dev_id;

 stmp3xxx_dma_clear_interrupt(ss->dma);
 complete(&ss->done);
 return IRQ_HANDLED;
}
