
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct imxmci_host {int mmc; scalar_t__ base; int pending_events; } ;


 int IMXMCI_PEND_STARTED_b ;
 scalar_t__ MMC_REG_STATUS ;
 scalar_t__ MMC_REG_STR_STP_CLK ;
 int STATUS_CARD_BUS_CLK_RUN ;
 int STR_STP_CLK_START_CLK ;
 int STR_STP_CLK_STOP_CLK ;
 int clear_bit (int ,int *) ;
 int dev_err (int ,char*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mmc_dev (int ) ;
 int readw (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int imxmci_start_clock(struct imxmci_host *host)
{
 unsigned int trials = 0;
 unsigned int delay_limit = 128;
 unsigned long flags;
 u16 reg;

 reg = readw(host->base + MMC_REG_STR_STP_CLK);
 writew(reg & ~STR_STP_CLK_STOP_CLK, host->base + MMC_REG_STR_STP_CLK);

 clear_bit(IMXMCI_PEND_STARTED_b, &host->pending_events);






 reg = readw(host->base + MMC_REG_STR_STP_CLK);
 writew(reg | STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);

 do {
  unsigned int delay = delay_limit;

  while (delay--) {
   reg = readw(host->base + MMC_REG_STATUS);
   if (reg & STATUS_CARD_BUS_CLK_RUN)

    reg = readw(host->base + MMC_REG_STATUS);
    if (reg & STATUS_CARD_BUS_CLK_RUN)
     return 0;

   if (test_bit(IMXMCI_PEND_STARTED_b, &host->pending_events))
    return 0;
  }

  local_irq_save(flags);






  if (!test_bit(IMXMCI_PEND_STARTED_b, &host->pending_events)) {
   reg = readw(host->base + MMC_REG_STR_STP_CLK);
   writew(reg | STR_STP_CLK_START_CLK,
     host->base + MMC_REG_STR_STP_CLK);
  }
  local_irq_restore(flags);

 } while (++trials < 256);

 dev_err(mmc_dev(host->mmc), "imxmci_start_clock blocked, no luck\n");

 return -1;
}
