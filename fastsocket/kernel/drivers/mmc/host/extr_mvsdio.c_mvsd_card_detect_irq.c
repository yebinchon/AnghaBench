
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvsd_host {int mmc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mmc_detect_change (int ,int ) ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static irqreturn_t mvsd_card_detect_irq(int irq, void *dev)
{
 struct mvsd_host *host = dev;
 mmc_detect_change(host->mmc, msecs_to_jiffies(100));
 return IRQ_HANDLED;
}
