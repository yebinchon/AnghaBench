
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* ScatterGatherSegments; } ;
struct TYPE_14__ {int DataTransferControllerToHost; int NoAutoRequestSense; } ;
struct TYPE_18__ {int DataTransferSize; TYPE_5__ DataTransferMemoryAddress; int IOCTL_Opcode; scalar_t__ ControllerNumber; TYPE_2__ CommandControlBits; int CommandOpcode; } ;
struct TYPE_19__ {TYPE_6__ ControllerInfo; } ;
struct TYPE_13__ {TYPE_7__ CommandMailbox; } ;
struct TYPE_21__ {int CommandType; TYPE_1__ V2; TYPE_8__* Controller; } ;
struct TYPE_15__ {int NewControllerInformationDMA; } ;
struct TYPE_20__ {TYPE_3__ V2; } ;
struct TYPE_16__ {int SegmentByteCount; int SegmentDataPointer; } ;
typedef int DAC960_V2_ControllerInfo_T ;
typedef TYPE_7__ DAC960_V2_CommandMailbox_T ;
typedef TYPE_8__ DAC960_Controller_T ;
typedef TYPE_9__ DAC960_Command_T ;


 int DAC960_MonitoringCommand ;
 int DAC960_QueueCommand (TYPE_9__*) ;
 int DAC960_V2_ClearCommand (TYPE_9__*) ;
 int DAC960_V2_GetControllerInfo ;
 int DAC960_V2_IOCTL ;

__attribute__((used)) static void DAC960_V2_QueueMonitoringCommand(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  DAC960_V2_CommandMailbox_T *CommandMailbox = &Command->V2.CommandMailbox;
  DAC960_V2_ClearCommand(Command);
  Command->CommandType = DAC960_MonitoringCommand;
  CommandMailbox->ControllerInfo.CommandOpcode = DAC960_V2_IOCTL;
  CommandMailbox->ControllerInfo.CommandControlBits
    .DataTransferControllerToHost = 1;
  CommandMailbox->ControllerInfo.CommandControlBits
    .NoAutoRequestSense = 1;
  CommandMailbox->ControllerInfo.DataTransferSize =
    sizeof(DAC960_V2_ControllerInfo_T);
  CommandMailbox->ControllerInfo.ControllerNumber = 0;
  CommandMailbox->ControllerInfo.IOCTL_Opcode = DAC960_V2_GetControllerInfo;
  CommandMailbox->ControllerInfo.DataTransferMemoryAddress
    .ScatterGatherSegments[0]
    .SegmentDataPointer =
    Controller->V2.NewControllerInformationDMA;
  CommandMailbox->ControllerInfo.DataTransferMemoryAddress
    .ScatterGatherSegments[0]
    .SegmentByteCount =
    CommandMailbox->ControllerInfo.DataTransferSize;
  DAC960_QueueCommand(Command);
}
