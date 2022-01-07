
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct isci_host {TYPE_1__* smu_registers; int scic_lock; } ;
struct TYPE_2__ {int interrupt_coalesce_control; } ;


 scalar_t__ ISCI_COALESCE_BASE ;
 int NUMBER ;
 int SMU_ICC_GEN_VAL (int ,scalar_t__) ;
 int TIMER ;
 scalar_t__ ilog2 (scalar_t__) ;
 scalar_t__ isci_tci_active (struct isci_host*) ;
 int sci_controller_completion_handler (struct isci_host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int,int *) ;

void isci_host_completion_routine(unsigned long data)
{
 struct isci_host *ihost = (struct isci_host *)data;
 u16 active;

 spin_lock_irq(&ihost->scic_lock);
 sci_controller_completion_handler(ihost);
 spin_unlock_irq(&ihost->scic_lock);




 active = isci_tci_active(ihost);
 writel(SMU_ICC_GEN_VAL(NUMBER, active) |
        SMU_ICC_GEN_VAL(TIMER, ISCI_COALESCE_BASE + ilog2(active)),
        &ihost->smu_registers->interrupt_coalesce_control);
}
