
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imxmci_host {int tasklet; int pending_events; int status_reg; int stuck_timeout; scalar_t__ base; } ;


 int IMXMCI_PEND_DMA_END_b ;
 scalar_t__ MMC_REG_STATUS ;
 int atomic_set (int *,int ) ;
 int readw (scalar_t__) ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void imxmci_dma_irq(int dma, void *devid)
{
 struct imxmci_host *host = devid;
 u32 stat = readw(host->base + MMC_REG_STATUS);

 atomic_set(&host->stuck_timeout, 0);
 host->status_reg = stat;
 set_bit(IMXMCI_PEND_DMA_END_b, &host->pending_events);
 tasklet_schedule(&host->tasklet);
}
