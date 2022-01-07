
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {int irq_enabled; int irq_disabled; int sdio_irqen; int irq_state; int irq; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void s3cmci_enable_irq(struct s3cmci_host *host, bool more)
{
 unsigned long flags;
 bool enable = 0;

 local_irq_save(flags);

 host->irq_enabled = more;
 host->irq_disabled = 0;

 enable = more | host->sdio_irqen;

 if (host->irq_state != enable) {
  host->irq_state = enable;

  if (enable)
   enable_irq(host->irq);
  else
   disable_irq(host->irq);
 }

 local_irq_restore(flags);
}
