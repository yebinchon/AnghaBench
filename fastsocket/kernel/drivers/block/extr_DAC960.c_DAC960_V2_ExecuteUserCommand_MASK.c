#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_9__ ;
typedef  struct TYPE_50__   TYPE_8__ ;
typedef  struct TYPE_49__   TYPE_7__ ;
typedef  struct TYPE_48__   TYPE_6__ ;
typedef  struct TYPE_47__   TYPE_5__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_20__ ;
typedef  struct TYPE_42__   TYPE_1__ ;
typedef  struct TYPE_41__   TYPE_19__ ;
typedef  struct TYPE_40__   TYPE_18__ ;
typedef  struct TYPE_39__   TYPE_17__ ;
typedef  struct TYPE_38__   TYPE_16__ ;
typedef  struct TYPE_37__   TYPE_15__ ;
typedef  struct TYPE_36__   TYPE_14__ ;
typedef  struct TYPE_35__   TYPE_13__ ;
typedef  struct TYPE_34__   TYPE_12__ ;
typedef  struct TYPE_33__   TYPE_11__ ;
typedef  struct TYPE_32__   TYPE_10__ ;

/* Type definitions */
struct TYPE_51__ {scalar_t__ PhysicalScanActive; } ;
struct TYPE_49__ {TYPE_6__* ScatterGatherSegments; } ;
struct TYPE_47__ {int DataTransferControllerToHost; int NoAutoRequestSense; } ;
struct TYPE_50__ {int DataTransferSize; TYPE_7__ DataTransferMemoryAddress; int /*<<< orphan*/  IOCTL_Opcode; scalar_t__ ControllerNumber; TYPE_5__ CommandControlBits; void* CommandOpcode; } ;
struct TYPE_48__ {int SegmentByteCount; int /*<<< orphan*/  SegmentDataPointer; } ;
struct TYPE_45__ {unsigned char LogicalDeviceNumber; } ;
struct TYPE_46__ {int RestoreConsistency; int InitializedAreaOnly; int /*<<< orphan*/  IOCTL_Opcode; TYPE_3__ LogicalDevice; } ;
struct TYPE_42__ {unsigned short LogicalDeviceNumber; } ;
struct TYPE_44__ {int /*<<< orphan*/  IOCTL_Opcode; TYPE_1__ LogicalDevice; } ;
struct TYPE_33__ {int DataTransferControllerToHost; int NoAutoRequestSense; } ;
struct TYPE_34__ {int /*<<< orphan*/  IOCTL_Opcode; TYPE_11__ CommandControlBits; void* CommandOpcode; } ;
struct TYPE_36__ {int /*<<< orphan*/  PhysicalDeviceState; } ;
struct TYPE_38__ {unsigned short LogicalDeviceNumber; } ;
struct TYPE_39__ {TYPE_14__ DeviceState; void* IOCTL_Opcode; TYPE_16__ LogicalDevice; } ;
struct TYPE_35__ {int /*<<< orphan*/  OperationDevice; int /*<<< orphan*/  IOCTL_Opcode; } ;
struct TYPE_40__ {TYPE_8__ ControllerInfo; TYPE_12__ Common; TYPE_4__ ConsistencyCheck; TYPE_2__ LogicalDeviceInfo; TYPE_17__ SetDeviceState; TYPE_13__ DeviceOperation; } ;
struct TYPE_37__ {scalar_t__ CommandStatus; TYPE_18__ CommandMailbox; } ;
struct TYPE_43__ {TYPE_15__ V2; int /*<<< orphan*/  CommandType; } ;
struct TYPE_32__ {TYPE_9__* NewControllerInformation; int /*<<< orphan*/  NewControllerInformationDMA; } ;
struct TYPE_41__ {int SuppressEnclosureMessages; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  CommandWaitQueue; TYPE_10__ V2; int /*<<< orphan*/  ControllerNumber; scalar_t__ UserStatusLength; } ;
typedef  int /*<<< orphan*/  DAC960_V2_ControllerInfo_T ;
typedef  TYPE_18__ DAC960_V2_CommandMailbox_T ;
typedef  TYPE_19__ DAC960_Controller_T ;
typedef  TYPE_20__ DAC960_Command_T ;

/* Variables and functions */
 TYPE_20__* FUNC0 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_20__*) ; 
 int /*<<< orphan*/  DAC960_ImmediateCommand ; 
 scalar_t__ FUNC3 (TYPE_19__*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 (TYPE_19__*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_19__*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_20__*) ; 
 int /*<<< orphan*/  DAC960_V2_ConsistencyCheckStart ; 
 int /*<<< orphan*/  DAC960_V2_ConsistencyCheckStop ; 
 int /*<<< orphan*/  DAC960_V2_Device_Dead ; 
 int /*<<< orphan*/  DAC960_V2_Device_Online ; 
 int /*<<< orphan*/  DAC960_V2_Device_Standby ; 
 int /*<<< orphan*/  DAC960_V2_GetControllerInfo ; 
 void* DAC960_V2_IOCTL ; 
 scalar_t__ DAC960_V2_NormalCompletion ; 
 int /*<<< orphan*/  DAC960_V2_PauseDevice ; 
 int /*<<< orphan*/  DAC960_V2_RAID_Controller ; 
 int /*<<< orphan*/  DAC960_V2_RebuildDeviceStart ; 
 int /*<<< orphan*/  DAC960_V2_RebuildDeviceStop ; 
 void* DAC960_V2_SetDeviceState ; 
 int /*<<< orphan*/  DAC960_V2_StartDiscovery ; 
 scalar_t__ FUNC7 (TYPE_20__*,unsigned char,unsigned char,unsigned short*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_19__*) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (unsigned char*,char*) ; 
 scalar_t__ FUNC13 (unsigned char*,char*,int) ; 

__attribute__((used)) static bool FUNC14(DAC960_Controller_T *Controller,
					    unsigned char *UserCommand)
{
  DAC960_Command_T *Command;
  DAC960_V2_CommandMailbox_T *CommandMailbox;
  unsigned long flags;
  unsigned char Channel, TargetID, LogicalDriveNumber;
  unsigned short LogicalDeviceNumber;

  FUNC10(&Controller->queue_lock, flags);
  while ((Command = FUNC0(Controller)) == NULL)
    FUNC8(Controller);
  FUNC11(&Controller->queue_lock, flags);
  Controller->UserStatusLength = 0;
  FUNC6(Command);
  Command->CommandType = DAC960_ImmediateCommand;
  CommandMailbox = &Command->V2.CommandMailbox;
  CommandMailbox->Common.CommandOpcode = DAC960_V2_IOCTL;
  CommandMailbox->Common.CommandControlBits.DataTransferControllerToHost = true;
  CommandMailbox->Common.CommandControlBits.NoAutoRequestSense = true;
  if (FUNC12(UserCommand, "flush-cache") == 0)
    {
      CommandMailbox->DeviceOperation.IOCTL_Opcode = DAC960_V2_PauseDevice;
      CommandMailbox->DeviceOperation.OperationDevice =
	DAC960_V2_RAID_Controller;
      FUNC2(Command);
      FUNC5("Cache Flush Completed\n", Controller);
    }
  else if (FUNC13(UserCommand, "kill", 4) == 0 &&
	   FUNC4(Controller, &UserCommand[4],
				      &Channel, &TargetID) &&
	   FUNC7(Command, Channel, TargetID,
					     &LogicalDeviceNumber))
    {
      CommandMailbox->SetDeviceState.LogicalDevice.LogicalDeviceNumber =
	LogicalDeviceNumber;
      CommandMailbox->SetDeviceState.IOCTL_Opcode =
	DAC960_V2_SetDeviceState;
      CommandMailbox->SetDeviceState.DeviceState.PhysicalDeviceState =
	DAC960_V2_Device_Dead;
      FUNC2(Command);
      FUNC5("Kill of Physical Device %d:%d %s\n",
			  Controller, Channel, TargetID,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Succeeded" : "Failed"));
    }
  else if (FUNC13(UserCommand, "make-online", 11) == 0 &&
	   FUNC4(Controller, &UserCommand[11],
				      &Channel, &TargetID) &&
	   FUNC7(Command, Channel, TargetID,
					     &LogicalDeviceNumber))
    {
      CommandMailbox->SetDeviceState.LogicalDevice.LogicalDeviceNumber =
	LogicalDeviceNumber;
      CommandMailbox->SetDeviceState.IOCTL_Opcode =
	DAC960_V2_SetDeviceState;
      CommandMailbox->SetDeviceState.DeviceState.PhysicalDeviceState =
	DAC960_V2_Device_Online;
      FUNC2(Command);
      FUNC5("Make Online of Physical Device %d:%d %s\n",
			  Controller, Channel, TargetID,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Succeeded" : "Failed"));
    }
  else if (FUNC13(UserCommand, "make-standby", 12) == 0 &&
	   FUNC4(Controller, &UserCommand[12],
				      &Channel, &TargetID) &&
	   FUNC7(Command, Channel, TargetID,
					     &LogicalDeviceNumber))
    {
      CommandMailbox->SetDeviceState.LogicalDevice.LogicalDeviceNumber =
	LogicalDeviceNumber;
      CommandMailbox->SetDeviceState.IOCTL_Opcode =
	DAC960_V2_SetDeviceState;
      CommandMailbox->SetDeviceState.DeviceState.PhysicalDeviceState =
	DAC960_V2_Device_Standby;
      FUNC2(Command);
      FUNC5("Make Standby of Physical Device %d:%d %s\n",
			  Controller, Channel, TargetID,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Succeeded" : "Failed"));
    }
  else if (FUNC13(UserCommand, "rebuild", 7) == 0 &&
	   FUNC4(Controller, &UserCommand[7],
				      &Channel, &TargetID) &&
	   FUNC7(Command, Channel, TargetID,
					     &LogicalDeviceNumber))
    {
      CommandMailbox->LogicalDeviceInfo.LogicalDevice.LogicalDeviceNumber =
	LogicalDeviceNumber;
      CommandMailbox->LogicalDeviceInfo.IOCTL_Opcode =
	DAC960_V2_RebuildDeviceStart;
      FUNC2(Command);
      FUNC5("Rebuild of Physical Device %d:%d %s\n",
			  Controller, Channel, TargetID,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Initiated" : "Not Initiated"));
    }
  else if (FUNC13(UserCommand, "cancel-rebuild", 14) == 0 &&
	   FUNC4(Controller, &UserCommand[14],
				      &Channel, &TargetID) &&
	   FUNC7(Command, Channel, TargetID,
					     &LogicalDeviceNumber))
    {
      CommandMailbox->LogicalDeviceInfo.LogicalDevice.LogicalDeviceNumber =
	LogicalDeviceNumber;
      CommandMailbox->LogicalDeviceInfo.IOCTL_Opcode =
	DAC960_V2_RebuildDeviceStop;
      FUNC2(Command);
      FUNC5("Rebuild of Physical Device %d:%d %s\n",
			  Controller, Channel, TargetID,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Cancelled" : "Not Cancelled"));
    }
  else if (FUNC13(UserCommand, "check-consistency", 17) == 0 &&
	   FUNC3(Controller, &UserCommand[17],
				    &LogicalDriveNumber))
    {
      CommandMailbox->ConsistencyCheck.LogicalDevice.LogicalDeviceNumber =
	LogicalDriveNumber;
      CommandMailbox->ConsistencyCheck.IOCTL_Opcode =
	DAC960_V2_ConsistencyCheckStart;
      CommandMailbox->ConsistencyCheck.RestoreConsistency = true;
      CommandMailbox->ConsistencyCheck.InitializedAreaOnly = false;
      FUNC2(Command);
      FUNC5("Consistency Check of Logical Drive %d "
			  "(/dev/rd/c%dd%d) %s\n",
			  Controller, LogicalDriveNumber,
			  Controller->ControllerNumber,
			  LogicalDriveNumber,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Initiated" : "Not Initiated"));
    }
  else if (FUNC13(UserCommand, "cancel-consistency-check", 24) == 0 &&
	   FUNC3(Controller, &UserCommand[24],
				    &LogicalDriveNumber))
    {
      CommandMailbox->ConsistencyCheck.LogicalDevice.LogicalDeviceNumber =
	LogicalDriveNumber;
      CommandMailbox->ConsistencyCheck.IOCTL_Opcode =
	DAC960_V2_ConsistencyCheckStop;
      FUNC2(Command);
      FUNC5("Consistency Check of Logical Drive %d "
			  "(/dev/rd/c%dd%d) %s\n",
			  Controller, LogicalDriveNumber,
			  Controller->ControllerNumber,
			  LogicalDriveNumber,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Cancelled" : "Not Cancelled"));
    }
  else if (FUNC12(UserCommand, "perform-discovery") == 0)
    {
      CommandMailbox->Common.IOCTL_Opcode = DAC960_V2_StartDiscovery;
      FUNC2(Command);
      FUNC5("Discovery %s\n", Controller,
			  (Command->V2.CommandStatus
			   == DAC960_V2_NormalCompletion
			   ? "Initiated" : "Not Initiated"));
      if (Command->V2.CommandStatus == DAC960_V2_NormalCompletion)
	{
	  CommandMailbox->ControllerInfo.CommandOpcode = DAC960_V2_IOCTL;
	  CommandMailbox->ControllerInfo.CommandControlBits
					.DataTransferControllerToHost = true;
	  CommandMailbox->ControllerInfo.CommandControlBits
					.NoAutoRequestSense = true;
	  CommandMailbox->ControllerInfo.DataTransferSize =
	    sizeof(DAC960_V2_ControllerInfo_T);
	  CommandMailbox->ControllerInfo.ControllerNumber = 0;
	  CommandMailbox->ControllerInfo.IOCTL_Opcode =
	    DAC960_V2_GetControllerInfo;
	  /*
	   * How does this NOT race with the queued Monitoring
	   * usage of this structure?
	   */
	  CommandMailbox->ControllerInfo.DataTransferMemoryAddress
					.ScatterGatherSegments[0]
					.SegmentDataPointer =
	    Controller->V2.NewControllerInformationDMA;
	  CommandMailbox->ControllerInfo.DataTransferMemoryAddress
					.ScatterGatherSegments[0]
					.SegmentByteCount =
	    CommandMailbox->ControllerInfo.DataTransferSize;
	  FUNC2(Command);
	  while (Controller->V2.NewControllerInformation->PhysicalScanActive)
	    {
	      FUNC2(Command);
	      FUNC9(&Controller->CommandWaitQueue, HZ);
	    }
	  FUNC5("Discovery Completed\n", Controller);
 	}
    }
  else if (FUNC12(UserCommand, "suppress-enclosure-messages") == 0)
    Controller->SuppressEnclosureMessages = true;
  else FUNC5("Illegal User Command: '%s'\n",
			   Controller, UserCommand);

  FUNC10(&Controller->queue_lock, flags);
  FUNC1(Command);
  FUNC11(&Controller->queue_lock, flags);
  return true;
}