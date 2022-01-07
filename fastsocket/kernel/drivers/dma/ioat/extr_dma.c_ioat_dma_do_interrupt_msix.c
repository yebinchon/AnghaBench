
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_chan_common {int cleanup_task; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ioat_dma_do_interrupt_msix(int irq, void *data)
{
 struct ioat_chan_common *chan = data;

 tasklet_schedule(&chan->cleanup_task);

 return IRQ_HANDLED;
}
