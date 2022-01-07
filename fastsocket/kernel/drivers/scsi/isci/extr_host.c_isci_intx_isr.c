
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {int scic_lock; int completion_tasklet; TYPE_1__* smu_registers; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int interrupt_status; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SMU_ISR_COMPLETION ;
 int sci_controller_error_handler (struct isci_host*) ;
 scalar_t__ sci_controller_error_isr (struct isci_host*) ;
 scalar_t__ sci_controller_isr (struct isci_host*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int writel (int ,int *) ;

irqreturn_t isci_intx_isr(int vec, void *data)
{
 irqreturn_t ret = IRQ_NONE;
 struct isci_host *ihost = data;

 if (sci_controller_isr(ihost)) {
  writel(SMU_ISR_COMPLETION, &ihost->smu_registers->interrupt_status);
  tasklet_schedule(&ihost->completion_tasklet);
  ret = IRQ_HANDLED;
 } else if (sci_controller_error_isr(ihost)) {
  spin_lock(&ihost->scic_lock);
  sci_controller_error_handler(ihost);
  spin_unlock(&ihost->scic_lock);
  ret = IRQ_HANDLED;
 }

 return ret;
}
