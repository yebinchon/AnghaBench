
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int irq; int dma; } ;
typedef TYPE_1__ Adapter ;


 int ICB_DIAG_FULL ;
 int IRQF_DISABLED ;
 int free_dma (int ) ;
 int free_irq (int ,TYPE_1__*) ;
 int printk (char*,int ) ;
 scalar_t__ request_dma (int ,char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,TYPE_1__*) ;
 int wd7000_adapter_reset (TYPE_1__*) ;
 int wd7000_diagnostics (TYPE_1__*,int ) ;
 int wd7000_enable_dma (TYPE_1__*) ;
 int wd7000_enable_intr (TYPE_1__*) ;
 int wd7000_intr ;

__attribute__((used)) static int wd7000_init(Adapter * host)
{
 if (wd7000_adapter_reset(host) == -1)
  return 0;


 if (request_irq(host->irq, wd7000_intr, IRQF_DISABLED, "wd7000", host)) {
  printk("wd7000_init: can't get IRQ %d.\n", host->irq);
  return (0);
 }
 if (request_dma(host->dma, "wd7000")) {
  printk("wd7000_init: can't get DMA channel %d.\n", host->dma);
  free_irq(host->irq, host);
  return (0);
 }
 wd7000_enable_dma(host);
 wd7000_enable_intr(host);

 if (!wd7000_diagnostics(host, ICB_DIAG_FULL)) {
  free_dma(host->dma);
  free_irq(host->irq, ((void*)0));
  return (0);
 }

 return (1);
}
