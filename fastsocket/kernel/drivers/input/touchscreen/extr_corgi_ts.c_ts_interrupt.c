
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgi_ts {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ts_interrupt_main (struct corgi_ts*,int ) ;

__attribute__((used)) static irqreturn_t ts_interrupt(int irq, void *dev_id)
{
 struct corgi_ts *corgits_data = dev_id;

 ts_interrupt_main(corgits_data, 0);
 return IRQ_HANDLED;
}
