#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_71__   TYPE_9__ ;
typedef  struct TYPE_70__   TYPE_8__ ;
typedef  struct TYPE_69__   TYPE_7__ ;
typedef  struct TYPE_68__   TYPE_6__ ;
typedef  struct TYPE_67__   TYPE_5__ ;
typedef  struct TYPE_66__   TYPE_4__ ;
typedef  struct TYPE_65__   TYPE_3__ ;
typedef  struct TYPE_64__   TYPE_33__ ;
typedef  struct TYPE_63__   TYPE_2__ ;
typedef  struct TYPE_62__   TYPE_26__ ;
typedef  struct TYPE_61__   TYPE_25__ ;
typedef  struct TYPE_60__   TYPE_23__ ;
typedef  struct TYPE_59__   TYPE_21__ ;
typedef  struct TYPE_58__   TYPE_1__ ;
typedef  struct TYPE_57__   TYPE_19__ ;
typedef  struct TYPE_56__   TYPE_18__ ;
typedef  struct TYPE_55__   TYPE_17__ ;
typedef  struct TYPE_54__   TYPE_16__ ;
typedef  struct TYPE_53__   TYPE_15__ ;
typedef  struct TYPE_52__   TYPE_14__ ;
typedef  struct TYPE_51__   TYPE_13__ ;
typedef  struct TYPE_50__   TYPE_12__ ;
typedef  struct TYPE_49__   TYPE_11__ ;
typedef  struct TYPE_48__   TYPE_10__ ;

/* Type definitions */
struct TYPE_71__ {int SegmentByteCount; int /*<<< orphan*/  SegmentDataPointer; } ;
struct TYPE_70__ {scalar_t__ LogicalUnit; scalar_t__ TargetID; scalar_t__ Channel; } ;
struct TYPE_68__ {TYPE_5__* ScatterGatherSegments; } ;
struct TYPE_69__ {int DataTransferSize; int EventSequenceNumberHigh16; int EventSequenceNumberLow16; TYPE_6__ DataTransferMemoryAddress; scalar_t__ IOCTL_Opcode; scalar_t__ ControllerNumber; void* CommandOpcode; } ;
struct TYPE_67__ {int SegmentByteCount; int /*<<< orphan*/  SegmentDataPointer; } ;
struct TYPE_66__ {scalar_t__ NextEventSequenceNumber; } ;
struct TYPE_65__ {scalar_t__ LogicalDeviceInitialized; } ;
struct TYPE_64__ {scalar_t__ expires; } ;
struct TYPE_63__ {scalar_t__ SenseKey; } ;
struct TYPE_53__ {TYPE_14__* ScatterGatherSegments; } ;
struct TYPE_50__ {unsigned short LogicalDeviceNumber; } ;
struct TYPE_54__ {int DataTransferSize; TYPE_15__ DataTransferMemoryAddress; scalar_t__ IOCTL_Opcode; TYPE_12__ LogicalDevice; void* CommandOpcode; } ;
struct TYPE_48__ {TYPE_9__* ScatterGatherSegments; } ;
struct TYPE_49__ {int DataTransferSize; TYPE_10__ DataTransferMemoryAddress; scalar_t__ IOCTL_Opcode; TYPE_8__ PhysicalDevice; void* CommandOpcode; } ;
struct TYPE_58__ {scalar_t__ IOCTL_Opcode; } ;
struct TYPE_60__ {TYPE_16__ LogicalDeviceInfo; TYPE_11__ PhysicalDeviceInfo; TYPE_7__ GetEvent; TYPE_1__ Common; } ;
struct TYPE_55__ {scalar_t__ CommandStatus; TYPE_21__* KernelCommand; int /*<<< orphan*/  DataTransferResidue; int /*<<< orphan*/  RequestSenseLength; TYPE_2__* RequestSense; TYPE_23__ CommandMailbox; } ;
struct TYPE_62__ {scalar_t__ CommandType; TYPE_17__ V2; int /*<<< orphan*/ * Completion; TYPE_25__* Controller; } ;
struct TYPE_57__ {scalar_t__ LogicalDevicesCritical; scalar_t__ LogicalDevicesOffline; scalar_t__ PhysicalDisksCritical; scalar_t__ PhysicalDisksOffline; scalar_t__ Channel; scalar_t__ TargetID; scalar_t__ LogicalUnit; scalar_t__ PhysicalDeviceState; int PeripheralDeviceType; scalar_t__ SoftErrors; scalar_t__ HardErrors; scalar_t__ MiscellaneousErrors; scalar_t__ Retries; scalar_t__ Aborts; scalar_t__ PredictedFailuresDetected; unsigned short LogicalDeviceNumber; unsigned long ConfigurableDeviceSize; scalar_t__ LogicalDeviceState; scalar_t__ CommandsFailed; scalar_t__ DeferredWriteErrors; TYPE_3__ LogicalDeviceControl; scalar_t__ BackgroundInitializationInProgress; int /*<<< orphan*/  PatrolOperationBlockNumber; scalar_t__ PatrolOperationInProgress; int /*<<< orphan*/  DataMigrationBlockNumber; scalar_t__ DataMigrationInProgress; int /*<<< orphan*/  ForegroundInitializationBlockNumber; scalar_t__ ForegroundInitializationInProgress; int /*<<< orphan*/  BackgroundInitializationBlockNumber; int /*<<< orphan*/  RebuildBlockNumber; scalar_t__ RebuildInProgress; int /*<<< orphan*/  ConsistencyCheckBlockNumber; scalar_t__ ConsistencyCheckInProgress; int /*<<< orphan*/  CommandTimeouts; int /*<<< orphan*/  ParityErrors; int /*<<< orphan*/  LogicalDevicesPresent; } ;
struct TYPE_51__ {int NeedLogicalDeviceInformation; int NeedPhysicalDeviceInformation; int StartLogicalDeviceInformationScan; int StartPhysicalDeviceInformationScan; int NextEventSequenceNumber; unsigned int PhysicalDeviceIndex; int NeedDeviceSerialNumberInformation; int* LogicalDriveFoundDuringScan; int /*<<< orphan*/  NewLogicalDeviceInformationDMA; TYPE_19__* NewLogicalDeviceInformation; int /*<<< orphan*/  NewPhysicalDeviceInformationDMA; TYPE_19__* NewPhysicalDeviceInformation; TYPE_19__* NewInquiryUnitSerialNumber; int /*<<< orphan*/  EventDMA; TYPE_4__* HealthStatusBuffer; TYPE_19__** InquiryUnitSerialNumber; TYPE_19__** LogicalDeviceInformation; TYPE_18__* LogicalDriveToVirtualDevice; TYPE_19__** PhysicalDeviceInformation; int /*<<< orphan*/  Event; TYPE_19__ ControllerInformation; TYPE_19__* NewControllerInformation; } ;
struct TYPE_61__ {int MonitoringAlertMode; int* LogicalDriveInitiallyAccessible; int MonitoringCommandDeferred; int /*<<< orphan*/  CommandWaitQueue; TYPE_33__ MonitoringTimer; int /*<<< orphan*/  MonitoringTimerCount; TYPE_13__ V2; int /*<<< orphan*/  ControllerNumber; int /*<<< orphan*/  LogicalDriveCount; scalar_t__ ShutdownMonitoringTimer; } ;
struct TYPE_59__ {int /*<<< orphan*/  (* CompletionFunction ) (TYPE_21__*) ;int /*<<< orphan*/  DataTransferLength; int /*<<< orphan*/  RequestSenseLength; scalar_t__ CommandStatus; } ;
struct TYPE_56__ {scalar_t__ Channel; scalar_t__ TargetID; scalar_t__ LogicalUnit; scalar_t__ Controller; } ;
struct TYPE_52__ {int SegmentByteCount; int /*<<< orphan*/  SegmentDataPointer; } ;
typedef  TYPE_18__ DAC960_V2_PhysicalDevice_T ;
typedef  TYPE_19__ DAC960_V2_PhysicalDeviceInfo_T ;
typedef  TYPE_19__ DAC960_V2_LogicalDeviceInfo_T ;
typedef  TYPE_21__ DAC960_V2_KernelCommand_T ;
typedef  scalar_t__ DAC960_V2_IOCTL_Opcode_T ;
typedef  int /*<<< orphan*/  DAC960_V2_Event_T ;
typedef  TYPE_19__ DAC960_V2_ControllerInfo_T ;
typedef  scalar_t__ DAC960_V2_CommandStatus_T ;
typedef  TYPE_23__ DAC960_V2_CommandMailbox_T ;
typedef  TYPE_19__ DAC960_SCSI_Inquiry_UnitSerialNumber_T ;
typedef  TYPE_25__ DAC960_Controller_T ;
typedef  TYPE_26__ DAC960_Command_T ;
typedef  scalar_t__ DAC960_CommandType_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_25__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_25__*,int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_26__*) ; 
 scalar_t__ DAC960_HealthStatusMonitoringInterval ; 
 scalar_t__ DAC960_ImmediateCommand ; 
 int DAC960_MaxLogicalDrives ; 
 scalar_t__ DAC960_MonitoringCommand ; 
 int /*<<< orphan*/  FUNC4 (TYPE_26__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_25__*,unsigned short,int /*<<< orphan*/ ,unsigned short,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_26__*) ; 
 scalar_t__ DAC960_QueuedCommand ; 
 scalar_t__ DAC960_ReadCommand ; 
 scalar_t__ DAC960_ReadRetryCommand ; 
 scalar_t__ DAC960_SenseKey_MediumError ; 
 scalar_t__ DAC960_SenseKey_NotReady ; 
 scalar_t__ DAC960_V2_AbormalCompletion ; 
 int /*<<< orphan*/  FUNC7 (TYPE_25__*,TYPE_23__*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ DAC960_V2_Device_CommandedOffline ; 
 scalar_t__ DAC960_V2_Device_Critical ; 
 scalar_t__ DAC960_V2_Device_Dead ; 
 scalar_t__ DAC960_V2_Device_InvalidState ; 
 scalar_t__ DAC960_V2_Device_Missing ; 
 scalar_t__ DAC960_V2_Device_Online ; 
 scalar_t__ DAC960_V2_Device_Rebuild ; 
 scalar_t__ DAC960_V2_Device_Standby ; 
 scalar_t__ DAC960_V2_Device_SuspectedDead ; 
 scalar_t__ DAC960_V2_GetControllerInfo ; 
 scalar_t__ DAC960_V2_GetEvent ; 
 scalar_t__ DAC960_V2_GetLogicalDeviceInfoValid ; 
 scalar_t__ DAC960_V2_GetPhysicalDeviceInfoValid ; 
 void* DAC960_V2_IOCTL ; 
 scalar_t__ DAC960_V2_LogicalDevice_Critical ; 
 scalar_t__ DAC960_V2_LogicalDevice_Online ; 
 int DAC960_V2_MaxPhysicalDevices ; 
 scalar_t__ DAC960_V2_NormalCompletion ; 
 int /*<<< orphan*/  FUNC8 (TYPE_26__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_26__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_25__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_25__*,char*,unsigned short,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ DAC960_V2_SCSI_10_Passthru ; 
 scalar_t__ DAC960_WriteCommand ; 
 scalar_t__ DAC960_WriteRetryCommand ; 
 int /*<<< orphan*/  FUNC12 (TYPE_26__*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC13 (TYPE_33__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC15 (TYPE_19__*) ; 
 TYPE_19__* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_19__*,TYPE_19__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_19__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  DAC960_CommandType_T CommandType = Command->CommandType;
  DAC960_V2_CommandMailbox_T *CommandMailbox = &Command->V2.CommandMailbox;
  DAC960_V2_IOCTL_Opcode_T CommandOpcode = CommandMailbox->Common.IOCTL_Opcode;
  DAC960_V2_CommandStatus_T CommandStatus = Command->V2.CommandStatus;

  if (CommandType == DAC960_ReadCommand ||
      CommandType == DAC960_WriteCommand)
    {

#ifdef FORCE_RETRY_DEBUG
      CommandStatus = DAC960_V2_AbormalCompletion;
#endif
      Command->V2.RequestSense->SenseKey = DAC960_SenseKey_MediumError;

      if (CommandStatus == DAC960_V2_NormalCompletion) {

		if (!FUNC4(Command, true))
			FUNC0();

      } else if (Command->V2.RequestSense->SenseKey == DAC960_SenseKey_MediumError)
	{
	  /*
	   * break the command down into pieces and resubmit each
	   * piece, hoping that some of them will succeed.
	   */
	   FUNC12(Command);
	   return;
	}
      else
	{
	  if (Command->V2.RequestSense->SenseKey != DAC960_SenseKey_NotReady)
	    FUNC9(Command);
	  /*
	    Perform completion processing for all buffers in this I/O Request.
	  */
          (void)FUNC4(Command, false);
	}
    }
  else if (CommandType == DAC960_ReadRetryCommand ||
	   CommandType == DAC960_WriteRetryCommand)
    {
      bool normal_completion;

#ifdef FORCE_RETRY_FAILURE_DEBUG
      static int retry_count = 1;
#endif
      /*
        Perform completion processing for the portion that was
	retried, and submit the next portion, if any.
      */
      normal_completion = true;
      if (CommandStatus != DAC960_V2_NormalCompletion) {
	normal_completion = false;
	if (Command->V2.RequestSense->SenseKey != DAC960_SenseKey_NotReady)
	    FUNC9(Command);
      }

#ifdef FORCE_RETRY_FAILURE_DEBUG
      if (!(++retry_count % 10000)) {
	      printk("V2 error retry failure test\n");
	      normal_completion = false;
	      DAC960_V2_ReadWriteError(Command);
      }
#endif

      if (!FUNC4(Command, normal_completion)) {
		FUNC12(Command);
        	return;
      }
    }
  else if (CommandType == DAC960_MonitoringCommand)
    {
      if (Controller->ShutdownMonitoringTimer)
	      return;
      if (CommandOpcode == DAC960_V2_GetControllerInfo)
	{
	  DAC960_V2_ControllerInfo_T *NewControllerInfo =
	    Controller->V2.NewControllerInformation;
	  DAC960_V2_ControllerInfo_T *ControllerInfo =
	    &Controller->V2.ControllerInformation;
	  Controller->LogicalDriveCount =
	    NewControllerInfo->LogicalDevicesPresent;
	  Controller->V2.NeedLogicalDeviceInformation = true;
	  Controller->V2.NeedPhysicalDeviceInformation = true;
	  Controller->V2.StartLogicalDeviceInformationScan = true;
	  Controller->V2.StartPhysicalDeviceInformationScan = true;
	  Controller->MonitoringAlertMode =
	    (NewControllerInfo->LogicalDevicesCritical > 0 ||
	     NewControllerInfo->LogicalDevicesOffline > 0 ||
	     NewControllerInfo->PhysicalDisksCritical > 0 ||
	     NewControllerInfo->PhysicalDisksOffline > 0);
	  FUNC17(ControllerInfo, NewControllerInfo,
		 sizeof(DAC960_V2_ControllerInfo_T));
	}
      else if (CommandOpcode == DAC960_V2_GetEvent)
	{
	  if (CommandStatus == DAC960_V2_NormalCompletion) {
	    FUNC10(Controller, Controller->V2.Event);
	  }
	  Controller->V2.NextEventSequenceNumber++;
	}
      else if (CommandOpcode == DAC960_V2_GetPhysicalDeviceInfoValid &&
	       CommandStatus == DAC960_V2_NormalCompletion)
	{
	  DAC960_V2_PhysicalDeviceInfo_T *NewPhysicalDeviceInfo =
	    Controller->V2.NewPhysicalDeviceInformation;
	  unsigned int PhysicalDeviceIndex = Controller->V2.PhysicalDeviceIndex;
	  DAC960_V2_PhysicalDeviceInfo_T *PhysicalDeviceInfo =
	    Controller->V2.PhysicalDeviceInformation[PhysicalDeviceIndex];
	  DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber =
	    Controller->V2.InquiryUnitSerialNumber[PhysicalDeviceIndex];
	  unsigned int DeviceIndex;
	  while (PhysicalDeviceInfo != NULL &&
		 (NewPhysicalDeviceInfo->Channel >
		  PhysicalDeviceInfo->Channel ||
		  (NewPhysicalDeviceInfo->Channel ==
		   PhysicalDeviceInfo->Channel &&
		   (NewPhysicalDeviceInfo->TargetID >
		    PhysicalDeviceInfo->TargetID ||
		   (NewPhysicalDeviceInfo->TargetID ==
		    PhysicalDeviceInfo->TargetID &&
		    NewPhysicalDeviceInfo->LogicalUnit >
		    PhysicalDeviceInfo->LogicalUnit)))))
	    {
	      FUNC2("Physical Device %d:%d No Longer Exists\n",
			      Controller,
			      PhysicalDeviceInfo->Channel,
			      PhysicalDeviceInfo->TargetID);
	      Controller->V2.PhysicalDeviceInformation
			     [PhysicalDeviceIndex] = NULL;
	      Controller->V2.InquiryUnitSerialNumber
			     [PhysicalDeviceIndex] = NULL;
	      FUNC15(PhysicalDeviceInfo);
	      FUNC15(InquiryUnitSerialNumber);
	      for (DeviceIndex = PhysicalDeviceIndex;
		   DeviceIndex < DAC960_V2_MaxPhysicalDevices - 1;
		   DeviceIndex++)
		{
		  Controller->V2.PhysicalDeviceInformation[DeviceIndex] =
		    Controller->V2.PhysicalDeviceInformation[DeviceIndex+1];
		  Controller->V2.InquiryUnitSerialNumber[DeviceIndex] =
		    Controller->V2.InquiryUnitSerialNumber[DeviceIndex+1];
		}
	      Controller->V2.PhysicalDeviceInformation
			     [DAC960_V2_MaxPhysicalDevices-1] = NULL;
	      Controller->V2.InquiryUnitSerialNumber
			     [DAC960_V2_MaxPhysicalDevices-1] = NULL;
	      PhysicalDeviceInfo =
		Controller->V2.PhysicalDeviceInformation[PhysicalDeviceIndex];
	      InquiryUnitSerialNumber =
		Controller->V2.InquiryUnitSerialNumber[PhysicalDeviceIndex];
	    }
	  if (PhysicalDeviceInfo == NULL ||
	      (NewPhysicalDeviceInfo->Channel !=
	       PhysicalDeviceInfo->Channel) ||
	      (NewPhysicalDeviceInfo->TargetID !=
	       PhysicalDeviceInfo->TargetID) ||
	      (NewPhysicalDeviceInfo->LogicalUnit !=
	       PhysicalDeviceInfo->LogicalUnit))
	    {
	      PhysicalDeviceInfo =
		FUNC16(sizeof(DAC960_V2_PhysicalDeviceInfo_T), GFP_ATOMIC);
	      InquiryUnitSerialNumber =
		  FUNC16(sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T),
			  GFP_ATOMIC);
	      if (InquiryUnitSerialNumber == NULL ||
		  PhysicalDeviceInfo == NULL)
		{
		  FUNC15(InquiryUnitSerialNumber);
		  InquiryUnitSerialNumber = NULL;
		  FUNC15(PhysicalDeviceInfo);
		  PhysicalDeviceInfo = NULL;
		}
	      FUNC2("Physical Device %d:%d Now Exists%s\n",
			      Controller,
			      NewPhysicalDeviceInfo->Channel,
			      NewPhysicalDeviceInfo->TargetID,
			      (PhysicalDeviceInfo != NULL
			       ? "" : " - Allocation Failed"));
	      if (PhysicalDeviceInfo != NULL)
		{
		  FUNC18(PhysicalDeviceInfo, 0,
			 sizeof(DAC960_V2_PhysicalDeviceInfo_T));
		  PhysicalDeviceInfo->PhysicalDeviceState =
		    DAC960_V2_Device_InvalidState;
		  FUNC18(InquiryUnitSerialNumber, 0,
			 sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));
		  InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;
		  for (DeviceIndex = DAC960_V2_MaxPhysicalDevices - 1;
		       DeviceIndex > PhysicalDeviceIndex;
		       DeviceIndex--)
		    {
		      Controller->V2.PhysicalDeviceInformation[DeviceIndex] =
			Controller->V2.PhysicalDeviceInformation[DeviceIndex-1];
		      Controller->V2.InquiryUnitSerialNumber[DeviceIndex] =
			Controller->V2.InquiryUnitSerialNumber[DeviceIndex-1];
		    }
		  Controller->V2.PhysicalDeviceInformation
				 [PhysicalDeviceIndex] =
		    PhysicalDeviceInfo;
		  Controller->V2.InquiryUnitSerialNumber
				 [PhysicalDeviceIndex] =
		    InquiryUnitSerialNumber;
		  Controller->V2.NeedDeviceSerialNumberInformation = true;
		}
	    }
	  if (PhysicalDeviceInfo != NULL)
	    {
	      if (NewPhysicalDeviceInfo->PhysicalDeviceState !=
		  PhysicalDeviceInfo->PhysicalDeviceState)
		FUNC2(
		  "Physical Device %d:%d is now %s\n", Controller,
		  NewPhysicalDeviceInfo->Channel,
		  NewPhysicalDeviceInfo->TargetID,
		  (NewPhysicalDeviceInfo->PhysicalDeviceState
		   == DAC960_V2_Device_Online
		   ? "ONLINE"
		   : NewPhysicalDeviceInfo->PhysicalDeviceState
		     == DAC960_V2_Device_Rebuild
		     ? "REBUILD"
		     : NewPhysicalDeviceInfo->PhysicalDeviceState
		       == DAC960_V2_Device_Missing
		       ? "MISSING"
		       : NewPhysicalDeviceInfo->PhysicalDeviceState
			 == DAC960_V2_Device_Critical
			 ? "CRITICAL"
			 : NewPhysicalDeviceInfo->PhysicalDeviceState
			   == DAC960_V2_Device_Dead
			   ? "DEAD"
			   : NewPhysicalDeviceInfo->PhysicalDeviceState
			     == DAC960_V2_Device_SuspectedDead
			     ? "SUSPECTED-DEAD"
			     : NewPhysicalDeviceInfo->PhysicalDeviceState
			       == DAC960_V2_Device_CommandedOffline
			       ? "COMMANDED-OFFLINE"
			       : NewPhysicalDeviceInfo->PhysicalDeviceState
				 == DAC960_V2_Device_Standby
				 ? "STANDBY" : "UNKNOWN"));
	      if ((NewPhysicalDeviceInfo->ParityErrors !=
		   PhysicalDeviceInfo->ParityErrors) ||
		  (NewPhysicalDeviceInfo->SoftErrors !=
		   PhysicalDeviceInfo->SoftErrors) ||
		  (NewPhysicalDeviceInfo->HardErrors !=
		   PhysicalDeviceInfo->HardErrors) ||
		  (NewPhysicalDeviceInfo->MiscellaneousErrors !=
		   PhysicalDeviceInfo->MiscellaneousErrors) ||
		  (NewPhysicalDeviceInfo->CommandTimeouts !=
		   PhysicalDeviceInfo->CommandTimeouts) ||
		  (NewPhysicalDeviceInfo->Retries !=
		   PhysicalDeviceInfo->Retries) ||
		  (NewPhysicalDeviceInfo->Aborts !=
		   PhysicalDeviceInfo->Aborts) ||
		  (NewPhysicalDeviceInfo->PredictedFailuresDetected !=
		   PhysicalDeviceInfo->PredictedFailuresDetected))
		{
		  FUNC2("Physical Device %d:%d Errors: "
				  "Parity = %d, Soft = %d, "
				  "Hard = %d, Misc = %d\n",
				  Controller,
				  NewPhysicalDeviceInfo->Channel,
				  NewPhysicalDeviceInfo->TargetID,
				  NewPhysicalDeviceInfo->ParityErrors,
				  NewPhysicalDeviceInfo->SoftErrors,
				  NewPhysicalDeviceInfo->HardErrors,
				  NewPhysicalDeviceInfo->MiscellaneousErrors);
		  FUNC2("Physical Device %d:%d Errors: "
				  "Timeouts = %d, Retries = %d, "
				  "Aborts = %d, Predicted = %d\n",
				  Controller,
				  NewPhysicalDeviceInfo->Channel,
				  NewPhysicalDeviceInfo->TargetID,
				  NewPhysicalDeviceInfo->CommandTimeouts,
				  NewPhysicalDeviceInfo->Retries,
				  NewPhysicalDeviceInfo->Aborts,
				  NewPhysicalDeviceInfo
				  ->PredictedFailuresDetected);
		}
	      if ((PhysicalDeviceInfo->PhysicalDeviceState
		   == DAC960_V2_Device_Dead ||
		   PhysicalDeviceInfo->PhysicalDeviceState
		   == DAC960_V2_Device_InvalidState) &&
		  NewPhysicalDeviceInfo->PhysicalDeviceState
		  != DAC960_V2_Device_Dead)
		Controller->V2.NeedDeviceSerialNumberInformation = true;
	      FUNC17(PhysicalDeviceInfo, NewPhysicalDeviceInfo,
		     sizeof(DAC960_V2_PhysicalDeviceInfo_T));
	    }
	  NewPhysicalDeviceInfo->LogicalUnit++;
	  Controller->V2.PhysicalDeviceIndex++;
	}
      else if (CommandOpcode == DAC960_V2_GetPhysicalDeviceInfoValid)
	{
	  unsigned int DeviceIndex;
	  for (DeviceIndex = Controller->V2.PhysicalDeviceIndex;
	       DeviceIndex < DAC960_V2_MaxPhysicalDevices;
	       DeviceIndex++)
	    {
	      DAC960_V2_PhysicalDeviceInfo_T *PhysicalDeviceInfo =
		Controller->V2.PhysicalDeviceInformation[DeviceIndex];
	      DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber =
		Controller->V2.InquiryUnitSerialNumber[DeviceIndex];
	      if (PhysicalDeviceInfo == NULL) break;
	      FUNC2("Physical Device %d:%d No Longer Exists\n",
			      Controller,
			      PhysicalDeviceInfo->Channel,
			      PhysicalDeviceInfo->TargetID);
	      Controller->V2.PhysicalDeviceInformation[DeviceIndex] = NULL;
	      Controller->V2.InquiryUnitSerialNumber[DeviceIndex] = NULL;
	      FUNC15(PhysicalDeviceInfo);
	      FUNC15(InquiryUnitSerialNumber);
	    }
	  Controller->V2.NeedPhysicalDeviceInformation = false;
	}
      else if (CommandOpcode == DAC960_V2_GetLogicalDeviceInfoValid &&
	       CommandStatus == DAC960_V2_NormalCompletion)
	{
	  DAC960_V2_LogicalDeviceInfo_T *NewLogicalDeviceInfo =
	    Controller->V2.NewLogicalDeviceInformation;
	  unsigned short LogicalDeviceNumber =
	    NewLogicalDeviceInfo->LogicalDeviceNumber;
	  DAC960_V2_LogicalDeviceInfo_T *LogicalDeviceInfo =
	    Controller->V2.LogicalDeviceInformation[LogicalDeviceNumber];
	  if (LogicalDeviceInfo == NULL)
	    {
	      DAC960_V2_PhysicalDevice_T PhysicalDevice;
	      PhysicalDevice.Controller = 0;
	      PhysicalDevice.Channel = NewLogicalDeviceInfo->Channel;
	      PhysicalDevice.TargetID = NewLogicalDeviceInfo->TargetID;
	      PhysicalDevice.LogicalUnit = NewLogicalDeviceInfo->LogicalUnit;
	      Controller->V2.LogicalDriveToVirtualDevice[LogicalDeviceNumber] =
		PhysicalDevice;
	      LogicalDeviceInfo = FUNC16(sizeof(DAC960_V2_LogicalDeviceInfo_T),
					  GFP_ATOMIC);
	      Controller->V2.LogicalDeviceInformation[LogicalDeviceNumber] =
		LogicalDeviceInfo;
	      FUNC2("Logical Drive %d (/dev/rd/c%dd%d) "
			      "Now Exists%s\n", Controller,
			      LogicalDeviceNumber,
			      Controller->ControllerNumber,
			      LogicalDeviceNumber,
			      (LogicalDeviceInfo != NULL
			       ? "" : " - Allocation Failed"));
	      if (LogicalDeviceInfo != NULL)
		{
		  FUNC18(LogicalDeviceInfo, 0,
			 sizeof(DAC960_V2_LogicalDeviceInfo_T));
		  FUNC1(Controller);
		}
	    }
	  if (LogicalDeviceInfo != NULL)
	    {
	      unsigned long LogicalDeviceSize =
		NewLogicalDeviceInfo->ConfigurableDeviceSize;
	      if (NewLogicalDeviceInfo->LogicalDeviceState !=
		  LogicalDeviceInfo->LogicalDeviceState)
		FUNC2("Logical Drive %d (/dev/rd/c%dd%d) "
				"is now %s\n", Controller,
				LogicalDeviceNumber,
				Controller->ControllerNumber,
				LogicalDeviceNumber,
				(NewLogicalDeviceInfo->LogicalDeviceState
				 == DAC960_V2_LogicalDevice_Online
				 ? "ONLINE"
				 : NewLogicalDeviceInfo->LogicalDeviceState
				   == DAC960_V2_LogicalDevice_Critical
				   ? "CRITICAL" : "OFFLINE"));
	      if ((NewLogicalDeviceInfo->SoftErrors !=
		   LogicalDeviceInfo->SoftErrors) ||
		  (NewLogicalDeviceInfo->CommandsFailed !=
		   LogicalDeviceInfo->CommandsFailed) ||
		  (NewLogicalDeviceInfo->DeferredWriteErrors !=
		   LogicalDeviceInfo->DeferredWriteErrors))
		FUNC2("Logical Drive %d (/dev/rd/c%dd%d) Errors: "
				"Soft = %d, Failed = %d, Deferred Write = %d\n",
				Controller, LogicalDeviceNumber,
				Controller->ControllerNumber,
				LogicalDeviceNumber,
				NewLogicalDeviceInfo->SoftErrors,
				NewLogicalDeviceInfo->CommandsFailed,
				NewLogicalDeviceInfo->DeferredWriteErrors);
	      if (NewLogicalDeviceInfo->ConsistencyCheckInProgress)
		FUNC11(Controller,
					 "Consistency Check",
					 LogicalDeviceNumber,
					 NewLogicalDeviceInfo
					 ->ConsistencyCheckBlockNumber,
					 LogicalDeviceSize);
	      else if (NewLogicalDeviceInfo->RebuildInProgress)
		FUNC11(Controller,
					 "Rebuild",
					 LogicalDeviceNumber,
					 NewLogicalDeviceInfo
					 ->RebuildBlockNumber,
					 LogicalDeviceSize);
	      else if (NewLogicalDeviceInfo->BackgroundInitializationInProgress)
		FUNC11(Controller,
					 "Background Initialization",
					 LogicalDeviceNumber,
					 NewLogicalDeviceInfo
					 ->BackgroundInitializationBlockNumber,
					 LogicalDeviceSize);
	      else if (NewLogicalDeviceInfo->ForegroundInitializationInProgress)
		FUNC11(Controller,
					 "Foreground Initialization",
					 LogicalDeviceNumber,
					 NewLogicalDeviceInfo
					 ->ForegroundInitializationBlockNumber,
					 LogicalDeviceSize);
	      else if (NewLogicalDeviceInfo->DataMigrationInProgress)
		FUNC11(Controller,
					 "Data Migration",
					 LogicalDeviceNumber,
					 NewLogicalDeviceInfo
					 ->DataMigrationBlockNumber,
					 LogicalDeviceSize);
	      else if (NewLogicalDeviceInfo->PatrolOperationInProgress)
		FUNC11(Controller,
					 "Patrol Operation",
					 LogicalDeviceNumber,
					 NewLogicalDeviceInfo
					 ->PatrolOperationBlockNumber,
					 LogicalDeviceSize);
	      if (LogicalDeviceInfo->BackgroundInitializationInProgress &&
		  !NewLogicalDeviceInfo->BackgroundInitializationInProgress)
		FUNC5("Logical Drive %d (/dev/rd/c%dd%d) "
				"Background Initialization %s\n",
				Controller,
				LogicalDeviceNumber,
				Controller->ControllerNumber,
				LogicalDeviceNumber,
				(NewLogicalDeviceInfo->LogicalDeviceControl
						      .LogicalDeviceInitialized
				 ? "Completed" : "Failed"));
	      FUNC17(LogicalDeviceInfo, NewLogicalDeviceInfo,
		     sizeof(DAC960_V2_LogicalDeviceInfo_T));
	    }
	  Controller->V2.LogicalDriveFoundDuringScan
			 [LogicalDeviceNumber] = true;
	  NewLogicalDeviceInfo->LogicalDeviceNumber++;
	}
      else if (CommandOpcode == DAC960_V2_GetLogicalDeviceInfoValid)
	{
	  int LogicalDriveNumber;
	  for (LogicalDriveNumber = 0;
	       LogicalDriveNumber < DAC960_MaxLogicalDrives;
	       LogicalDriveNumber++)
	    {
	      DAC960_V2_LogicalDeviceInfo_T *LogicalDeviceInfo =
		Controller->V2.LogicalDeviceInformation[LogicalDriveNumber];
	      if (LogicalDeviceInfo == NULL ||
		  Controller->V2.LogicalDriveFoundDuringScan
				 [LogicalDriveNumber])
		continue;
	      FUNC2("Logical Drive %d (/dev/rd/c%dd%d) "
			      "No Longer Exists\n", Controller,
			      LogicalDriveNumber,
			      Controller->ControllerNumber,
			      LogicalDriveNumber);
	      Controller->V2.LogicalDeviceInformation
			     [LogicalDriveNumber] = NULL;
	      FUNC15(LogicalDeviceInfo);
	      Controller->LogicalDriveInitiallyAccessible
			  [LogicalDriveNumber] = false;
	      FUNC1(Controller);
	    }
	  Controller->V2.NeedLogicalDeviceInformation = false;
	}
      else if (CommandOpcode == DAC960_V2_SCSI_10_Passthru)
        {
	    DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber =
		Controller->V2.InquiryUnitSerialNumber[Controller->V2.PhysicalDeviceIndex - 1];

	    if (CommandStatus != DAC960_V2_NormalCompletion) {
		FUNC18(InquiryUnitSerialNumber,
			0, sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));
		InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;
	    } else
	  	FUNC17(InquiryUnitSerialNumber,
			Controller->V2.NewInquiryUnitSerialNumber,
			sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));

	     Controller->V2.NeedDeviceSerialNumberInformation = false;
        }

      if (Controller->V2.HealthStatusBuffer->NextEventSequenceNumber
	  - Controller->V2.NextEventSequenceNumber > 0)
	{
	  CommandMailbox->GetEvent.CommandOpcode = DAC960_V2_IOCTL;
	  CommandMailbox->GetEvent.DataTransferSize = sizeof(DAC960_V2_Event_T);
	  CommandMailbox->GetEvent.EventSequenceNumberHigh16 =
	    Controller->V2.NextEventSequenceNumber >> 16;
	  CommandMailbox->GetEvent.ControllerNumber = 0;
	  CommandMailbox->GetEvent.IOCTL_Opcode =
	    DAC960_V2_GetEvent;
	  CommandMailbox->GetEvent.EventSequenceNumberLow16 =
	    Controller->V2.NextEventSequenceNumber & 0xFFFF;
	  CommandMailbox->GetEvent.DataTransferMemoryAddress
				  .ScatterGatherSegments[0]
				  .SegmentDataPointer =
	    Controller->V2.EventDMA;
	  CommandMailbox->GetEvent.DataTransferMemoryAddress
				  .ScatterGatherSegments[0]
				  .SegmentByteCount =
	    CommandMailbox->GetEvent.DataTransferSize;
	  FUNC6(Command);
	  return;
	}
      if (Controller->V2.NeedPhysicalDeviceInformation)
	{
	  if (Controller->V2.NeedDeviceSerialNumberInformation)
	    {
	      DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber =
                Controller->V2.NewInquiryUnitSerialNumber;
	      InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;

	      FUNC7(Controller, CommandMailbox,
			Controller->V2.NewPhysicalDeviceInformation->Channel,
			Controller->V2.NewPhysicalDeviceInformation->TargetID,
		Controller->V2.NewPhysicalDeviceInformation->LogicalUnit - 1);


	      FUNC6(Command);
	      return;
	    }
	  if (Controller->V2.StartPhysicalDeviceInformationScan)
	    {
	      Controller->V2.PhysicalDeviceIndex = 0;
	      Controller->V2.NewPhysicalDeviceInformation->Channel = 0;
	      Controller->V2.NewPhysicalDeviceInformation->TargetID = 0;
	      Controller->V2.NewPhysicalDeviceInformation->LogicalUnit = 0;
	      Controller->V2.StartPhysicalDeviceInformationScan = false;
	    }
	  CommandMailbox->PhysicalDeviceInfo.CommandOpcode = DAC960_V2_IOCTL;
	  CommandMailbox->PhysicalDeviceInfo.DataTransferSize =
	    sizeof(DAC960_V2_PhysicalDeviceInfo_T);
	  CommandMailbox->PhysicalDeviceInfo.PhysicalDevice.LogicalUnit =
	    Controller->V2.NewPhysicalDeviceInformation->LogicalUnit;
	  CommandMailbox->PhysicalDeviceInfo.PhysicalDevice.TargetID =
	    Controller->V2.NewPhysicalDeviceInformation->TargetID;
	  CommandMailbox->PhysicalDeviceInfo.PhysicalDevice.Channel =
	    Controller->V2.NewPhysicalDeviceInformation->Channel;
	  CommandMailbox->PhysicalDeviceInfo.IOCTL_Opcode =
	    DAC960_V2_GetPhysicalDeviceInfoValid;
	  CommandMailbox->PhysicalDeviceInfo.DataTransferMemoryAddress
					    .ScatterGatherSegments[0]
					    .SegmentDataPointer =
	    Controller->V2.NewPhysicalDeviceInformationDMA;
	  CommandMailbox->PhysicalDeviceInfo.DataTransferMemoryAddress
					    .ScatterGatherSegments[0]
					    .SegmentByteCount =
	    CommandMailbox->PhysicalDeviceInfo.DataTransferSize;
	  FUNC6(Command);
	  return;
	}
      if (Controller->V2.NeedLogicalDeviceInformation)
	{
	  if (Controller->V2.StartLogicalDeviceInformationScan)
	    {
	      int LogicalDriveNumber;
	      for (LogicalDriveNumber = 0;
		   LogicalDriveNumber < DAC960_MaxLogicalDrives;
		   LogicalDriveNumber++)
		Controller->V2.LogicalDriveFoundDuringScan
			       [LogicalDriveNumber] = false;
	      Controller->V2.NewLogicalDeviceInformation->LogicalDeviceNumber = 0;
	      Controller->V2.StartLogicalDeviceInformationScan = false;
	    }
	  CommandMailbox->LogicalDeviceInfo.CommandOpcode = DAC960_V2_IOCTL;
	  CommandMailbox->LogicalDeviceInfo.DataTransferSize =
	    sizeof(DAC960_V2_LogicalDeviceInfo_T);
	  CommandMailbox->LogicalDeviceInfo.LogicalDevice.LogicalDeviceNumber =
	    Controller->V2.NewLogicalDeviceInformation->LogicalDeviceNumber;
	  CommandMailbox->LogicalDeviceInfo.IOCTL_Opcode =
	    DAC960_V2_GetLogicalDeviceInfoValid;
	  CommandMailbox->LogicalDeviceInfo.DataTransferMemoryAddress
					   .ScatterGatherSegments[0]
					   .SegmentDataPointer =
	    Controller->V2.NewLogicalDeviceInformationDMA;
	  CommandMailbox->LogicalDeviceInfo.DataTransferMemoryAddress
					   .ScatterGatherSegments[0]
					   .SegmentByteCount =
	    CommandMailbox->LogicalDeviceInfo.DataTransferSize;
	  FUNC6(Command);
	  return;
	}
      Controller->MonitoringTimerCount++;
      Controller->MonitoringTimer.expires =
	jiffies + DAC960_HealthStatusMonitoringInterval;
      	FUNC13(&Controller->MonitoringTimer);
    }
  if (CommandType == DAC960_ImmediateCommand)
    {
      FUNC14(Command->Completion);
      Command->Completion = NULL;
      return;
    }
  if (CommandType == DAC960_QueuedCommand)
    {
      DAC960_V2_KernelCommand_T *KernelCommand = Command->V2.KernelCommand;
      KernelCommand->CommandStatus = CommandStatus;
      KernelCommand->RequestSenseLength = Command->V2.RequestSenseLength;
      KernelCommand->DataTransferLength = Command->V2.DataTransferResidue;
      Command->V2.KernelCommand = NULL;
      FUNC3(Command);
      KernelCommand->CompletionFunction(KernelCommand);
      return;
    }
  /*
    Queue a Status Monitoring Command to the Controller using the just
    completed Command if one was deferred previously due to lack of a
    free Command when the Monitoring Timer Function was called.
  */
  if (Controller->MonitoringCommandDeferred)
    {
      Controller->MonitoringCommandDeferred = false;
      FUNC8(Command);
      return;
    }
  /*
    Deallocate the Command.
  */
  FUNC3(Command);
  /*
    Wake up any processes waiting on a free Command.
  */
  FUNC21(&Controller->CommandWaitQueue);
}