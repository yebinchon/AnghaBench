
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char Channel; unsigned char TargetID; scalar_t__ Modifier; int DeviceState; int CommandOpcode; } ;
struct TYPE_9__ {TYPE_1__ Type3D; } ;
struct TYPE_8__ {int CommandStatus; TYPE_3__ CommandMailbox; } ;
struct TYPE_10__ {TYPE_2__ V1; } ;
typedef int DAC960_V1_PhysicalDeviceState_T ;
typedef TYPE_3__ DAC960_V1_CommandMailbox_T ;
typedef int DAC960_Controller_T ;
typedef TYPE_4__ DAC960_Command_T ;


 int DAC960_ExecuteCommand (TYPE_4__*) ;
 int DAC960_UserCritical (char*,int *,unsigned char const*,unsigned char,unsigned char,...) ;




 int DAC960_V1_StartDevice ;


__attribute__((used)) static void DAC960_V1_SetDeviceState(DAC960_Controller_T *Controller,
         DAC960_Command_T *Command,
         unsigned char Channel,
         unsigned char TargetID,
         DAC960_V1_PhysicalDeviceState_T
           DeviceState,
         const unsigned char *DeviceStateString)
{
  DAC960_V1_CommandMailbox_T *CommandMailbox = &Command->V1.CommandMailbox;
  CommandMailbox->Type3D.CommandOpcode = DAC960_V1_StartDevice;
  CommandMailbox->Type3D.Channel = Channel;
  CommandMailbox->Type3D.TargetID = TargetID;
  CommandMailbox->Type3D.DeviceState = DeviceState;
  CommandMailbox->Type3D.Modifier = 0;
  DAC960_ExecuteCommand(Command);
  switch (Command->V1.CommandStatus)
    {
    case 129:
      DAC960_UserCritical("%s of Physical Device %d:%d Succeeded\n", Controller,
     DeviceStateString, Channel, TargetID);
      break;
    case 128:
      DAC960_UserCritical("%s of Physical Device %d:%d Failed - "
     "Unable to Start Device\n", Controller,
     DeviceStateString, Channel, TargetID);
      break;
    case 130:
      DAC960_UserCritical("%s of Physical Device %d:%d Failed - "
     "No Device at Address\n", Controller,
     DeviceStateString, Channel, TargetID);
      break;
    case 131:
      DAC960_UserCritical("%s of Physical Device %d:%d Failed - "
     "Invalid Channel or Target or Modifier\n",
     Controller, DeviceStateString, Channel, TargetID);
      break;
    case 132:
      DAC960_UserCritical("%s of Physical Device %d:%d Failed - "
     "Channel Busy\n", Controller,
     DeviceStateString, Channel, TargetID);
      break;
    default:
      DAC960_UserCritical("%s of Physical Device %d:%d Failed - "
     "Unexpected Status %04X\n", Controller,
     DeviceStateString, Channel, TargetID,
     Command->V1.CommandStatus);
      break;
    }
}
