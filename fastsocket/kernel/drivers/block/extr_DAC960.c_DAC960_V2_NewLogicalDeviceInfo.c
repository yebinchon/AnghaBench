
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_20__ {int NewLogicalDeviceInformationDMA; } ;
struct TYPE_26__ {TYPE_3__ V2; } ;
struct TYPE_22__ {TYPE_4__* ScatterGatherSegments; } ;
struct TYPE_19__ {unsigned short LogicalDeviceNumber; } ;
struct TYPE_18__ {int DataTransferControllerToHost; int NoAutoRequestSense; } ;
struct TYPE_23__ {int DataTransferSize; TYPE_5__ DataTransferMemoryAddress; int IOCTL_Opcode; TYPE_2__ LogicalDevice; TYPE_1__ CommandControlBits; int CommandOpcode; } ;
struct TYPE_25__ {TYPE_6__ LogicalDeviceInfo; } ;
struct TYPE_24__ {scalar_t__ CommandStatus; TYPE_8__ CommandMailbox; } ;
struct TYPE_21__ {int SegmentByteCount; int SegmentDataPointer; } ;
struct TYPE_17__ {TYPE_7__ V2; int CommandType; } ;
typedef int DAC960_V2_LogicalDeviceInfo_T ;
typedef scalar_t__ DAC960_V2_CommandStatus_T ;
typedef TYPE_8__ DAC960_V2_CommandMailbox_T ;
typedef TYPE_9__ DAC960_Controller_T ;
typedef TYPE_10__ DAC960_Command_T ;


 TYPE_10__* DAC960_AllocateCommand (TYPE_9__*) ;
 int DAC960_DeallocateCommand (TYPE_10__*) ;
 int DAC960_ExecuteCommand (TYPE_10__*) ;
 int DAC960_ImmediateCommand ;
 int DAC960_V2_ClearCommand (TYPE_10__*) ;
 int DAC960_V2_GetLogicalDeviceInfoValid ;
 int DAC960_V2_IOCTL ;
 scalar_t__ DAC960_V2_NormalCompletion ;

__attribute__((used)) static bool DAC960_V2_NewLogicalDeviceInfo(DAC960_Controller_T *Controller,
        unsigned short LogicalDeviceNumber)
{
  DAC960_Command_T *Command = DAC960_AllocateCommand(Controller);
  DAC960_V2_CommandMailbox_T *CommandMailbox = &Command->V2.CommandMailbox;
  DAC960_V2_CommandStatus_T CommandStatus;

  DAC960_V2_ClearCommand(Command);
  Command->CommandType = DAC960_ImmediateCommand;
  CommandMailbox->LogicalDeviceInfo.CommandOpcode =
    DAC960_V2_IOCTL;
  CommandMailbox->LogicalDeviceInfo.CommandControlBits
       .DataTransferControllerToHost = 1;
  CommandMailbox->LogicalDeviceInfo.CommandControlBits
       .NoAutoRequestSense = 1;
  CommandMailbox->LogicalDeviceInfo.DataTransferSize =
    sizeof(DAC960_V2_LogicalDeviceInfo_T);
  CommandMailbox->LogicalDeviceInfo.LogicalDevice.LogicalDeviceNumber =
    LogicalDeviceNumber;
  CommandMailbox->LogicalDeviceInfo.IOCTL_Opcode = DAC960_V2_GetLogicalDeviceInfoValid;
  CommandMailbox->LogicalDeviceInfo.DataTransferMemoryAddress
       .ScatterGatherSegments[0]
       .SegmentDataPointer =
     Controller->V2.NewLogicalDeviceInformationDMA;
  CommandMailbox->LogicalDeviceInfo.DataTransferMemoryAddress
       .ScatterGatherSegments[0]
       .SegmentByteCount =
    CommandMailbox->LogicalDeviceInfo.DataTransferSize;
  DAC960_ExecuteCommand(Command);
  CommandStatus = Command->V2.CommandStatus;
  DAC960_DeallocateCommand(Command);
  return (CommandStatus == DAC960_V2_NormalCompletion);
}
