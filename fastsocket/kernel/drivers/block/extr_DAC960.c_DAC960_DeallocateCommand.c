
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Next; int * Request; TYPE_1__* Controller; } ;
struct TYPE_4__ {TYPE_2__* FreeCommands; } ;
typedef TYPE_1__ DAC960_Controller_T ;
typedef TYPE_2__ DAC960_Command_T ;



__attribute__((used)) static inline void DAC960_DeallocateCommand(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;

  Command->Request = ((void*)0);
  Command->Next = Controller->FreeCommands;
  Controller->FreeCommands = Command;
}
