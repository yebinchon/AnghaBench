
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mtip_irq_handler(int irq, void *instance)
{
 struct driver_data *dd = instance;
 tasklet_schedule(&dd->tasklet);
 return IRQ_HANDLED;
}
