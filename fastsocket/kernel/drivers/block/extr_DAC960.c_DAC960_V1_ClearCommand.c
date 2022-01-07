
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ CommandStatus; int CommandMailbox; } ;
struct TYPE_5__ {TYPE_1__ V1; } ;
typedef int DAC960_V1_CommandMailbox_T ;
typedef TYPE_2__ DAC960_Command_T ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void DAC960_V1_ClearCommand(DAC960_Command_T *Command)
{
  DAC960_V1_CommandMailbox_T *CommandMailbox = &Command->V1.CommandMailbox;
  memset(CommandMailbox, 0, sizeof(DAC960_V1_CommandMailbox_T));
  Command->V1.CommandStatus = 0;
}
