
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mmc_spi_host {TYPE_1__* pdata; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int detect_delay; } ;


 int IRQ_HANDLED ;
 int max (int ,int ) ;
 int mmc_detect_change (void*,int ) ;
 struct mmc_spi_host* mmc_priv (void*) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static irqreturn_t
mmc_spi_detect_irq(int irq, void *mmc)
{
 struct mmc_spi_host *host = mmc_priv(mmc);
 u16 delay_msec = max(host->pdata->detect_delay, (u16)100);

 mmc_detect_change(mmc, msecs_to_jiffies(delay_msec));
 return IRQ_HANDLED;
}
