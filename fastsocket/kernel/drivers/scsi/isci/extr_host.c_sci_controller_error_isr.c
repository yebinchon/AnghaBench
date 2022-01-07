
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_host {TYPE_1__* smu_registers; } ;
struct TYPE_2__ {int interrupt_mask; int interrupt_status; } ;


 int SMU_ISR_QUEUE_ERROR ;
 int SMU_ISR_QUEUE_SUSPEND ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static bool sci_controller_error_isr(struct isci_host *ihost)
{
 u32 interrupt_status;

 interrupt_status =
  readl(&ihost->smu_registers->interrupt_status);
 interrupt_status &= (SMU_ISR_QUEUE_ERROR | SMU_ISR_QUEUE_SUSPEND);

 if (interrupt_status != 0) {



  return 1;
 }







 writel(0xff, &ihost->smu_registers->interrupt_mask);
 writel(0, &ihost->smu_registers->interrupt_mask);

 return 0;
}
