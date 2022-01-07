
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_adapter {int neq_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ehea_interrupt_neq(int irq, void *param)
{
 struct ehea_adapter *adapter = param;
 tasklet_hi_schedule(&adapter->neq_tasklet);
 return IRQ_HANDLED;
}
