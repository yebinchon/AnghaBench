
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * Completion; TYPE_1__* Controller; } ;
struct TYPE_5__ {int queue_lock; } ;
typedef TYPE_1__ DAC960_Controller_T ;
typedef TYPE_2__ DAC960_Command_T ;


 int Completion ;
 int DAC960_QueueCommand (TYPE_2__*) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 scalar_t__ in_interrupt () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void DAC960_ExecuteCommand(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  DECLARE_COMPLETION_ONSTACK(Completion);
  unsigned long flags;
  Command->Completion = &Completion;

  spin_lock_irqsave(&Controller->queue_lock, flags);
  DAC960_QueueCommand(Command);
  spin_unlock_irqrestore(&Controller->queue_lock, flags);

  if (in_interrupt())
   return;
  wait_for_completion(&Completion);
}
