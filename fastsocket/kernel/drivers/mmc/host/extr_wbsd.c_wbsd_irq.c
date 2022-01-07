
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int isr; int finish_tasklet; int timeout_tasklet; int crc_tasklet; int fifo_tasklet; int card_tasklet; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WBSD_INT_CARD ;
 int WBSD_INT_CRC ;
 int WBSD_INT_FIFO_THRE ;
 int WBSD_INT_TC ;
 int WBSD_INT_TIMEOUT ;
 scalar_t__ WBSD_ISR ;
 int inb (scalar_t__) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t wbsd_irq(int irq, void *dev_id)
{
 struct wbsd_host *host = dev_id;
 int isr;

 isr = inb(host->base + WBSD_ISR);




 if (isr == 0xff || isr == 0x00)
  return IRQ_NONE;

 host->isr |= isr;




 if (isr & WBSD_INT_CARD)
  tasklet_schedule(&host->card_tasklet);
 if (isr & WBSD_INT_FIFO_THRE)
  tasklet_schedule(&host->fifo_tasklet);
 if (isr & WBSD_INT_CRC)
  tasklet_hi_schedule(&host->crc_tasklet);
 if (isr & WBSD_INT_TIMEOUT)
  tasklet_hi_schedule(&host->timeout_tasklet);
 if (isr & WBSD_INT_TC)
  tasklet_schedule(&host->finish_tasklet);

 return IRQ_HANDLED;
}
