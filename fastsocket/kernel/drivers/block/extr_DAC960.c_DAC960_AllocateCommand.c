
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Next; } ;
struct TYPE_5__ {TYPE_2__* FreeCommands; } ;
typedef TYPE_1__ DAC960_Controller_T ;
typedef TYPE_2__ DAC960_Command_T ;



__attribute__((used)) static inline DAC960_Command_T *DAC960_AllocateCommand(DAC960_Controller_T
             *Controller)
{
  DAC960_Command_T *Command = Controller->FreeCommands;
  if (Command == ((void*)0)) return ((void*)0);
  Controller->FreeCommands = Command->Next;
  Command->Next = ((void*)0);
  return Command;
}
