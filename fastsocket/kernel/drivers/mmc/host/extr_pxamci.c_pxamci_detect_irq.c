
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxamci_host {TYPE_1__* pdata; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int detect_delay; } ;


 int IRQ_HANDLED ;
 int mmc_detect_change (void*,int ) ;
 struct pxamci_host* mmc_priv (void*) ;

__attribute__((used)) static irqreturn_t pxamci_detect_irq(int irq, void *devid)
{
 struct pxamci_host *host = mmc_priv(devid);

 mmc_detect_change(devid, host->pdata->detect_delay);
 return IRQ_HANDLED;
}
