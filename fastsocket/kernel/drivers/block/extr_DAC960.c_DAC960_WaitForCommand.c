
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_lock; int FreeCommands; int CommandWaitQueue; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int __wait_event (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void DAC960_WaitForCommand(DAC960_Controller_T *Controller)
{
  spin_unlock_irq(&Controller->queue_lock);
  __wait_event(Controller->CommandWaitQueue, Controller->FreeCommands);
  spin_lock_irq(&Controller->queue_lock);
}
