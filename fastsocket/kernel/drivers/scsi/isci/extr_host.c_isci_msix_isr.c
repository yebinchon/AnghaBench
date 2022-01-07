
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_host {int completion_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ sci_controller_isr (struct isci_host*) ;
 int tasklet_schedule (int *) ;

irqreturn_t isci_msix_isr(int vec, void *data)
{
 struct isci_host *ihost = data;

 if (sci_controller_isr(ihost))
  tasklet_schedule(&ihost->completion_tasklet);

 return IRQ_HANDLED;
}
