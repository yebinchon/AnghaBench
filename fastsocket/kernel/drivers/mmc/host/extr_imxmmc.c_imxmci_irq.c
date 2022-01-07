
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imxmci_host {int imask; int tasklet; int pending_events; int status_reg; int stuck_timeout; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IMXMCI_PEND_IRQ_b ;
 int IMXMCI_PEND_STARTED_b ;
 int INT_MASK_AUTO_CARD_DETECT ;
 int INT_MASK_SDIO ;
 int IRQ_RETVAL (int) ;
 scalar_t__ MMC_REG_INT_MASK ;
 scalar_t__ MMC_REG_STATUS ;
 int atomic_set (int *,int ) ;
 int readw (scalar_t__) ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t imxmci_irq(int irq, void *devid)
{
 struct imxmci_host *host = devid;
 u32 stat = readw(host->base + MMC_REG_STATUS);
 int handled = 1;

 writew(host->imask | INT_MASK_SDIO | INT_MASK_AUTO_CARD_DETECT,
   host->base + MMC_REG_INT_MASK);

 atomic_set(&host->stuck_timeout, 0);
 host->status_reg = stat;
 set_bit(IMXMCI_PEND_IRQ_b, &host->pending_events);
 set_bit(IMXMCI_PEND_STARTED_b, &host->pending_events);
 tasklet_schedule(&host->tasklet);

 return IRQ_RETVAL(handled);
}
