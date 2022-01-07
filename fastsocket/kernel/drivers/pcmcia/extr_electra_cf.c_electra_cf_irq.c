
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int electra_cf_timer (unsigned long) ;

__attribute__((used)) static irqreturn_t electra_cf_irq(int irq, void *_cf)
{
 electra_cf_timer((unsigned long)_cf);
 return IRQ_HANDLED;
}
