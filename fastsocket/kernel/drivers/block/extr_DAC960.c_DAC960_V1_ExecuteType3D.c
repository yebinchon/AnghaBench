
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_9__ {unsigned char Channel; unsigned char TargetID; int BusAddress; int CommandOpcode; } ;
struct TYPE_11__ {TYPE_1__ Type3D; } ;
struct TYPE_10__ {scalar_t__ CommandStatus; TYPE_3__ CommandMailbox; } ;
struct TYPE_12__ {TYPE_2__ V1; int CommandType; } ;
typedef scalar_t__ DAC960_V1_CommandStatus_T ;
typedef int DAC960_V1_CommandOpcode_T ;
typedef TYPE_3__ DAC960_V1_CommandMailbox_T ;
typedef int DAC960_Controller_T ;
typedef TYPE_4__ DAC960_Command_T ;


 TYPE_4__* DAC960_AllocateCommand (int *) ;
 int DAC960_DeallocateCommand (TYPE_4__*) ;
 int DAC960_ExecuteCommand (TYPE_4__*) ;
 int DAC960_ImmediateCommand ;
 int DAC960_V1_ClearCommand (TYPE_4__*) ;
 scalar_t__ DAC960_V1_NormalCompletion ;

__attribute__((used)) static bool DAC960_V1_ExecuteType3D(DAC960_Controller_T *Controller,
           DAC960_V1_CommandOpcode_T CommandOpcode,
           unsigned char Channel,
           unsigned char TargetID,
           dma_addr_t DataDMA)
{
  DAC960_Command_T *Command = DAC960_AllocateCommand(Controller);
  DAC960_V1_CommandMailbox_T *CommandMailbox = &Command->V1.CommandMailbox;
  DAC960_V1_CommandStatus_T CommandStatus;
  DAC960_V1_ClearCommand(Command);
  Command->CommandType = DAC960_ImmediateCommand;
  CommandMailbox->Type3D.CommandOpcode = CommandOpcode;
  CommandMailbox->Type3D.Channel = Channel;
  CommandMailbox->Type3D.TargetID = TargetID;
  CommandMailbox->Type3D.BusAddress = DataDMA;
  DAC960_ExecuteCommand(Command);
  CommandStatus = Command->V1.CommandStatus;
  DAC960_DeallocateCommand(Command);
  return (CommandStatus == DAC960_V1_NormalCompletion);
}
