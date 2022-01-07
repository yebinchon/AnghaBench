
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_host {void (* mg_do_intr ) (struct mg_host*) ;int lock; int timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int del_timer (int *) ;
 void mg_unexpected_intr (struct mg_host*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mg_irq(int irq, void *dev_id)
{
 struct mg_host *host = dev_id;
 void (*handler)(struct mg_host *) = host->mg_do_intr;

 spin_lock(&host->lock);

 host->mg_do_intr = ((void*)0);
 del_timer(&host->timer);
 if (!handler)
  handler = mg_unexpected_intr;
 handler(host);

 spin_unlock(&host->lock);

 return IRQ_HANDLED;
}
