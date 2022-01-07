
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_71__ TYPE_9__ ;
typedef struct TYPE_70__ TYPE_8__ ;
typedef struct TYPE_69__ TYPE_7__ ;
typedef struct TYPE_68__ TYPE_6__ ;
typedef struct TYPE_67__ TYPE_5__ ;
typedef struct TYPE_66__ TYPE_4__ ;
typedef struct TYPE_65__ TYPE_3__ ;
typedef struct TYPE_64__ TYPE_33__ ;
typedef struct TYPE_63__ TYPE_2__ ;
typedef struct TYPE_62__ TYPE_26__ ;
typedef struct TYPE_61__ TYPE_25__ ;
typedef struct TYPE_60__ TYPE_23__ ;
typedef struct TYPE_59__ TYPE_21__ ;
typedef struct TYPE_58__ TYPE_1__ ;
typedef struct TYPE_57__ TYPE_19__ ;
typedef struct TYPE_56__ TYPE_18__ ;
typedef struct TYPE_55__ TYPE_17__ ;
typedef struct TYPE_54__ TYPE_16__ ;
typedef struct TYPE_53__ TYPE_15__ ;
typedef struct TYPE_52__ TYPE_14__ ;
typedef struct TYPE_51__ TYPE_13__ ;
typedef struct TYPE_50__ TYPE_12__ ;
typedef struct TYPE_49__ TYPE_11__ ;
typedef struct TYPE_48__ TYPE_10__ ;


struct TYPE_71__ {int SegmentByteCount; int SegmentDataPointer; } ;
struct TYPE_70__ {scalar_t__ LogicalUnit; scalar_t__ TargetID; scalar_t__ Channel; } ;
struct TYPE_68__ {TYPE_5__* ScatterGatherSegments; } ;
struct TYPE_69__ {int DataTransferSize; int EventSequenceNumberHigh16; int EventSequenceNumberLow16; TYPE_6__ DataTransferMemoryAddress; scalar_t__ IOCTL_Opcode; scalar_t__ ControllerNumber; void* CommandOpcode; } ;
struct TYPE_67__ {int SegmentByteCount; int SegmentDataPointer; } ;
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
struct TYPE_55__ {scalar_t__ CommandStatus; TYPE_21__* KernelCommand; int DataTransferResidue; int RequestSenseLength; TYPE_2__* RequestSense; TYPE_23__ CommandMailbox; } ;
struct TYPE_62__ {scalar_t__ CommandType; TYPE_17__ V2; int * Completion; TYPE_25__* Controller; } ;
struct TYPE_57__ {scalar_t__ LogicalDevicesCritical; scalar_t__ LogicalDevicesOffline; scalar_t__ PhysicalDisksCritical; scalar_t__ PhysicalDisksOffline; scalar_t__ Channel; scalar_t__ TargetID; scalar_t__ LogicalUnit; scalar_t__ PhysicalDeviceState; int PeripheralDeviceType; scalar_t__ SoftErrors; scalar_t__ HardErrors; scalar_t__ MiscellaneousErrors; scalar_t__ Retries; scalar_t__ Aborts; scalar_t__ PredictedFailuresDetected; unsigned short LogicalDeviceNumber; unsigned long ConfigurableDeviceSize; scalar_t__ LogicalDeviceState; scalar_t__ CommandsFailed; scalar_t__ DeferredWriteErrors; TYPE_3__ LogicalDeviceControl; scalar_t__ BackgroundInitializationInProgress; int PatrolOperationBlockNumber; scalar_t__ PatrolOperationInProgress; int DataMigrationBlockNumber; scalar_t__ DataMigrationInProgress; int ForegroundInitializationBlockNumber; scalar_t__ ForegroundInitializationInProgress; int BackgroundInitializationBlockNumber; int RebuildBlockNumber; scalar_t__ RebuildInProgress; int ConsistencyCheckBlockNumber; scalar_t__ ConsistencyCheckInProgress; int CommandTimeouts; int ParityErrors; int LogicalDevicesPresent; } ;
struct TYPE_51__ {int NeedLogicalDeviceInformation; int NeedPhysicalDeviceInformation; int StartLogicalDeviceInformationScan; int StartPhysicalDeviceInformationScan; int NextEventSequenceNumber; unsigned int PhysicalDeviceIndex; int NeedDeviceSerialNumberInformation; int* LogicalDriveFoundDuringScan; int NewLogicalDeviceInformationDMA; TYPE_19__* NewLogicalDeviceInformation; int NewPhysicalDeviceInformationDMA; TYPE_19__* NewPhysicalDeviceInformation; TYPE_19__* NewInquiryUnitSerialNumber; int EventDMA; TYPE_4__* HealthStatusBuffer; TYPE_19__** InquiryUnitSerialNumber; TYPE_19__** LogicalDeviceInformation; TYPE_18__* LogicalDriveToVirtualDevice; TYPE_19__** PhysicalDeviceInformation; int Event; TYPE_19__ ControllerInformation; TYPE_19__* NewControllerInformation; } ;
struct TYPE_61__ {int MonitoringAlertMode; int* LogicalDriveInitiallyAccessible; int MonitoringCommandDeferred; int CommandWaitQueue; TYPE_33__ MonitoringTimer; int MonitoringTimerCount; TYPE_13__ V2; int ControllerNumber; int LogicalDriveCount; scalar_t__ ShutdownMonitoringTimer; } ;
struct TYPE_59__ {int (* CompletionFunction ) (TYPE_21__*) ;int DataTransferLength; int RequestSenseLength; scalar_t__ CommandStatus; } ;
struct TYPE_56__ {scalar_t__ Channel; scalar_t__ TargetID; scalar_t__ LogicalUnit; scalar_t__ Controller; } ;
struct TYPE_52__ {int SegmentByteCount; int SegmentDataPointer; } ;
typedef TYPE_18__ DAC960_V2_PhysicalDevice_T ;
typedef TYPE_19__ DAC960_V2_PhysicalDeviceInfo_T ;
typedef TYPE_19__ DAC960_V2_LogicalDeviceInfo_T ;
typedef TYPE_21__ DAC960_V2_KernelCommand_T ;
typedef scalar_t__ DAC960_V2_IOCTL_Opcode_T ;
typedef int DAC960_V2_Event_T ;
typedef TYPE_19__ DAC960_V2_ControllerInfo_T ;
typedef scalar_t__ DAC960_V2_CommandStatus_T ;
typedef TYPE_23__ DAC960_V2_CommandMailbox_T ;
typedef TYPE_19__ DAC960_SCSI_Inquiry_UnitSerialNumber_T ;
typedef TYPE_25__ DAC960_Controller_T ;
typedef TYPE_26__ DAC960_Command_T ;
typedef scalar_t__ DAC960_CommandType_T ;


 int BUG () ;
 int DAC960_ComputeGenericDiskInfo (TYPE_25__*) ;
 int DAC960_Critical (char*,TYPE_25__*,int,scalar_t__,...) ;
 int DAC960_DeallocateCommand (TYPE_26__*) ;
 scalar_t__ DAC960_HealthStatusMonitoringInterval ;
 scalar_t__ DAC960_ImmediateCommand ;
 int DAC960_MaxLogicalDrives ;
 scalar_t__ DAC960_MonitoringCommand ;
 int DAC960_ProcessCompletedRequest (TYPE_26__*,int) ;
 int DAC960_Progress (char*,TYPE_25__*,unsigned short,int ,unsigned short,char*) ;
 int DAC960_QueueCommand (TYPE_26__*) ;
 scalar_t__ DAC960_QueuedCommand ;
 scalar_t__ DAC960_ReadCommand ;
 scalar_t__ DAC960_ReadRetryCommand ;
 scalar_t__ DAC960_SenseKey_MediumError ;
 scalar_t__ DAC960_SenseKey_NotReady ;
 scalar_t__ DAC960_V2_AbormalCompletion ;
 int DAC960_V2_ConstructNewUnitSerialNumber (TYPE_25__*,TYPE_23__*,scalar_t__,scalar_t__,scalar_t__) ;
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
 int DAC960_V2_QueueMonitoringCommand (TYPE_26__*) ;
 int DAC960_V2_ReadWriteError (TYPE_26__*) ;
 int DAC960_V2_ReportEvent (TYPE_25__*,int ) ;
 int DAC960_V2_ReportProgress (TYPE_25__*,char*,unsigned short,int ,unsigned long) ;
 scalar_t__ DAC960_V2_SCSI_10_Passthru ;
 scalar_t__ DAC960_WriteCommand ;
 scalar_t__ DAC960_WriteRetryCommand ;
 int DAC960_queue_partial_rw (TYPE_26__*) ;
 int GFP_ATOMIC ;
 int add_timer (TYPE_33__*) ;
 int complete (int *) ;
 scalar_t__ jiffies ;
 int kfree (TYPE_19__*) ;
 TYPE_19__* kmalloc (int,int ) ;
 int memcpy (TYPE_19__*,TYPE_19__*,int) ;
 int memset (TYPE_19__*,int ,int) ;
 int printk (char*) ;
 int stub1 (TYPE_21__*) ;
 int wake_up (int *) ;

__attribute__((used)) static void DAC960_V2_ProcessCompletedCommand(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  DAC960_CommandType_T CommandType = Command->CommandType;
  DAC960_V2_CommandMailbox_T *CommandMailbox = &Command->V2.CommandMailbox;
  DAC960_V2_IOCTL_Opcode_T CommandOpcode = CommandMailbox->Common.IOCTL_Opcode;
  DAC960_V2_CommandStatus_T CommandStatus = Command->V2.CommandStatus;

  if (CommandType == DAC960_ReadCommand ||
      CommandType == DAC960_WriteCommand)
    {




      Command->V2.RequestSense->SenseKey = DAC960_SenseKey_MediumError;

      if (CommandStatus == DAC960_V2_NormalCompletion) {

  if (!DAC960_ProcessCompletedRequest(Command, 1))
   BUG();

      } else if (Command->V2.RequestSense->SenseKey == DAC960_SenseKey_MediumError)
 {




    DAC960_queue_partial_rw(Command);
    return;
 }
      else
 {
   if (Command->V2.RequestSense->SenseKey != DAC960_SenseKey_NotReady)
     DAC960_V2_ReadWriteError(Command);



          (void)DAC960_ProcessCompletedRequest(Command, 0);
 }
    }
  else if (CommandType == DAC960_ReadRetryCommand ||
    CommandType == DAC960_WriteRetryCommand)
    {
      bool normal_completion;
      normal_completion = 1;
      if (CommandStatus != DAC960_V2_NormalCompletion) {
 normal_completion = 0;
 if (Command->V2.RequestSense->SenseKey != DAC960_SenseKey_NotReady)
     DAC960_V2_ReadWriteError(Command);
      }
      if (!DAC960_ProcessCompletedRequest(Command, normal_completion)) {
  DAC960_queue_partial_rw(Command);
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
   Controller->V2.NeedLogicalDeviceInformation = 1;
   Controller->V2.NeedPhysicalDeviceInformation = 1;
   Controller->V2.StartLogicalDeviceInformationScan = 1;
   Controller->V2.StartPhysicalDeviceInformationScan = 1;
   Controller->MonitoringAlertMode =
     (NewControllerInfo->LogicalDevicesCritical > 0 ||
      NewControllerInfo->LogicalDevicesOffline > 0 ||
      NewControllerInfo->PhysicalDisksCritical > 0 ||
      NewControllerInfo->PhysicalDisksOffline > 0);
   memcpy(ControllerInfo, NewControllerInfo,
   sizeof(DAC960_V2_ControllerInfo_T));
 }
      else if (CommandOpcode == DAC960_V2_GetEvent)
 {
   if (CommandStatus == DAC960_V2_NormalCompletion) {
     DAC960_V2_ReportEvent(Controller, Controller->V2.Event);
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
   while (PhysicalDeviceInfo != ((void*)0) &&
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
       DAC960_Critical("Physical Device %d:%d No Longer Exists\n",
         Controller,
         PhysicalDeviceInfo->Channel,
         PhysicalDeviceInfo->TargetID);
       Controller->V2.PhysicalDeviceInformation
        [PhysicalDeviceIndex] = ((void*)0);
       Controller->V2.InquiryUnitSerialNumber
        [PhysicalDeviceIndex] = ((void*)0);
       kfree(PhysicalDeviceInfo);
       kfree(InquiryUnitSerialNumber);
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
        [DAC960_V2_MaxPhysicalDevices-1] = ((void*)0);
       Controller->V2.InquiryUnitSerialNumber
        [DAC960_V2_MaxPhysicalDevices-1] = ((void*)0);
       PhysicalDeviceInfo =
  Controller->V2.PhysicalDeviceInformation[PhysicalDeviceIndex];
       InquiryUnitSerialNumber =
  Controller->V2.InquiryUnitSerialNumber[PhysicalDeviceIndex];
     }
   if (PhysicalDeviceInfo == ((void*)0) ||
       (NewPhysicalDeviceInfo->Channel !=
        PhysicalDeviceInfo->Channel) ||
       (NewPhysicalDeviceInfo->TargetID !=
        PhysicalDeviceInfo->TargetID) ||
       (NewPhysicalDeviceInfo->LogicalUnit !=
        PhysicalDeviceInfo->LogicalUnit))
     {
       PhysicalDeviceInfo =
  kmalloc(sizeof(DAC960_V2_PhysicalDeviceInfo_T), GFP_ATOMIC);
       InquiryUnitSerialNumber =
    kmalloc(sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T),
     GFP_ATOMIC);
       if (InquiryUnitSerialNumber == ((void*)0) ||
    PhysicalDeviceInfo == ((void*)0))
  {
    kfree(InquiryUnitSerialNumber);
    InquiryUnitSerialNumber = ((void*)0);
    kfree(PhysicalDeviceInfo);
    PhysicalDeviceInfo = ((void*)0);
  }
       DAC960_Critical("Physical Device %d:%d Now Exists%s\n",
         Controller,
         NewPhysicalDeviceInfo->Channel,
         NewPhysicalDeviceInfo->TargetID,
         (PhysicalDeviceInfo != ((void*)0)
          ? "" : " - Allocation Failed"));
       if (PhysicalDeviceInfo != ((void*)0))
  {
    memset(PhysicalDeviceInfo, 0,
    sizeof(DAC960_V2_PhysicalDeviceInfo_T));
    PhysicalDeviceInfo->PhysicalDeviceState =
      DAC960_V2_Device_InvalidState;
    memset(InquiryUnitSerialNumber, 0,
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
    Controller->V2.NeedDeviceSerialNumberInformation = 1;
  }
     }
   if (PhysicalDeviceInfo != ((void*)0))
     {
       if (NewPhysicalDeviceInfo->PhysicalDeviceState !=
    PhysicalDeviceInfo->PhysicalDeviceState)
  DAC960_Critical(
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
    DAC960_Critical("Physical Device %d:%d Errors: "
      "Parity = %d, Soft = %d, "
      "Hard = %d, Misc = %d\n",
      Controller,
      NewPhysicalDeviceInfo->Channel,
      NewPhysicalDeviceInfo->TargetID,
      NewPhysicalDeviceInfo->ParityErrors,
      NewPhysicalDeviceInfo->SoftErrors,
      NewPhysicalDeviceInfo->HardErrors,
      NewPhysicalDeviceInfo->MiscellaneousErrors);
    DAC960_Critical("Physical Device %d:%d Errors: "
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
  Controller->V2.NeedDeviceSerialNumberInformation = 1;
       memcpy(PhysicalDeviceInfo, NewPhysicalDeviceInfo,
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
       if (PhysicalDeviceInfo == ((void*)0)) break;
       DAC960_Critical("Physical Device %d:%d No Longer Exists\n",
         Controller,
         PhysicalDeviceInfo->Channel,
         PhysicalDeviceInfo->TargetID);
       Controller->V2.PhysicalDeviceInformation[DeviceIndex] = ((void*)0);
       Controller->V2.InquiryUnitSerialNumber[DeviceIndex] = ((void*)0);
       kfree(PhysicalDeviceInfo);
       kfree(InquiryUnitSerialNumber);
     }
   Controller->V2.NeedPhysicalDeviceInformation = 0;
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
   if (LogicalDeviceInfo == ((void*)0))
     {
       DAC960_V2_PhysicalDevice_T PhysicalDevice;
       PhysicalDevice.Controller = 0;
       PhysicalDevice.Channel = NewLogicalDeviceInfo->Channel;
       PhysicalDevice.TargetID = NewLogicalDeviceInfo->TargetID;
       PhysicalDevice.LogicalUnit = NewLogicalDeviceInfo->LogicalUnit;
       Controller->V2.LogicalDriveToVirtualDevice[LogicalDeviceNumber] =
  PhysicalDevice;
       LogicalDeviceInfo = kmalloc(sizeof(DAC960_V2_LogicalDeviceInfo_T),
       GFP_ATOMIC);
       Controller->V2.LogicalDeviceInformation[LogicalDeviceNumber] =
  LogicalDeviceInfo;
       DAC960_Critical("Logical Drive %d (/dev/rd/c%dd%d) "
         "Now Exists%s\n", Controller,
         LogicalDeviceNumber,
         Controller->ControllerNumber,
         LogicalDeviceNumber,
         (LogicalDeviceInfo != ((void*)0)
          ? "" : " - Allocation Failed"));
       if (LogicalDeviceInfo != ((void*)0))
  {
    memset(LogicalDeviceInfo, 0,
    sizeof(DAC960_V2_LogicalDeviceInfo_T));
    DAC960_ComputeGenericDiskInfo(Controller);
  }
     }
   if (LogicalDeviceInfo != ((void*)0))
     {
       unsigned long LogicalDeviceSize =
  NewLogicalDeviceInfo->ConfigurableDeviceSize;
       if (NewLogicalDeviceInfo->LogicalDeviceState !=
    LogicalDeviceInfo->LogicalDeviceState)
  DAC960_Critical("Logical Drive %d (/dev/rd/c%dd%d) "
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
  DAC960_Critical("Logical Drive %d (/dev/rd/c%dd%d) Errors: "
    "Soft = %d, Failed = %d, Deferred Write = %d\n",
    Controller, LogicalDeviceNumber,
    Controller->ControllerNumber,
    LogicalDeviceNumber,
    NewLogicalDeviceInfo->SoftErrors,
    NewLogicalDeviceInfo->CommandsFailed,
    NewLogicalDeviceInfo->DeferredWriteErrors);
       if (NewLogicalDeviceInfo->ConsistencyCheckInProgress)
  DAC960_V2_ReportProgress(Controller,
      "Consistency Check",
      LogicalDeviceNumber,
      NewLogicalDeviceInfo
      ->ConsistencyCheckBlockNumber,
      LogicalDeviceSize);
       else if (NewLogicalDeviceInfo->RebuildInProgress)
  DAC960_V2_ReportProgress(Controller,
      "Rebuild",
      LogicalDeviceNumber,
      NewLogicalDeviceInfo
      ->RebuildBlockNumber,
      LogicalDeviceSize);
       else if (NewLogicalDeviceInfo->BackgroundInitializationInProgress)
  DAC960_V2_ReportProgress(Controller,
      "Background Initialization",
      LogicalDeviceNumber,
      NewLogicalDeviceInfo
      ->BackgroundInitializationBlockNumber,
      LogicalDeviceSize);
       else if (NewLogicalDeviceInfo->ForegroundInitializationInProgress)
  DAC960_V2_ReportProgress(Controller,
      "Foreground Initialization",
      LogicalDeviceNumber,
      NewLogicalDeviceInfo
      ->ForegroundInitializationBlockNumber,
      LogicalDeviceSize);
       else if (NewLogicalDeviceInfo->DataMigrationInProgress)
  DAC960_V2_ReportProgress(Controller,
      "Data Migration",
      LogicalDeviceNumber,
      NewLogicalDeviceInfo
      ->DataMigrationBlockNumber,
      LogicalDeviceSize);
       else if (NewLogicalDeviceInfo->PatrolOperationInProgress)
  DAC960_V2_ReportProgress(Controller,
      "Patrol Operation",
      LogicalDeviceNumber,
      NewLogicalDeviceInfo
      ->PatrolOperationBlockNumber,
      LogicalDeviceSize);
       if (LogicalDeviceInfo->BackgroundInitializationInProgress &&
    !NewLogicalDeviceInfo->BackgroundInitializationInProgress)
  DAC960_Progress("Logical Drive %d (/dev/rd/c%dd%d) "
    "Background Initialization %s\n",
    Controller,
    LogicalDeviceNumber,
    Controller->ControllerNumber,
    LogicalDeviceNumber,
    (NewLogicalDeviceInfo->LogicalDeviceControl
            .LogicalDeviceInitialized
     ? "Completed" : "Failed"));
       memcpy(LogicalDeviceInfo, NewLogicalDeviceInfo,
       sizeof(DAC960_V2_LogicalDeviceInfo_T));
     }
   Controller->V2.LogicalDriveFoundDuringScan
    [LogicalDeviceNumber] = 1;
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
       if (LogicalDeviceInfo == ((void*)0) ||
    Controller->V2.LogicalDriveFoundDuringScan
     [LogicalDriveNumber])
  continue;
       DAC960_Critical("Logical Drive %d (/dev/rd/c%dd%d) "
         "No Longer Exists\n", Controller,
         LogicalDriveNumber,
         Controller->ControllerNumber,
         LogicalDriveNumber);
       Controller->V2.LogicalDeviceInformation
        [LogicalDriveNumber] = ((void*)0);
       kfree(LogicalDeviceInfo);
       Controller->LogicalDriveInitiallyAccessible
     [LogicalDriveNumber] = 0;
       DAC960_ComputeGenericDiskInfo(Controller);
     }
   Controller->V2.NeedLogicalDeviceInformation = 0;
 }
      else if (CommandOpcode == DAC960_V2_SCSI_10_Passthru)
        {
     DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber =
  Controller->V2.InquiryUnitSerialNumber[Controller->V2.PhysicalDeviceIndex - 1];

     if (CommandStatus != DAC960_V2_NormalCompletion) {
  memset(InquiryUnitSerialNumber,
   0, sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));
  InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;
     } else
    memcpy(InquiryUnitSerialNumber,
   Controller->V2.NewInquiryUnitSerialNumber,
   sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));

      Controller->V2.NeedDeviceSerialNumberInformation = 0;
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
   DAC960_QueueCommand(Command);
   return;
 }
      if (Controller->V2.NeedPhysicalDeviceInformation)
 {
   if (Controller->V2.NeedDeviceSerialNumberInformation)
     {
       DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber =
                Controller->V2.NewInquiryUnitSerialNumber;
       InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;

       DAC960_V2_ConstructNewUnitSerialNumber(Controller, CommandMailbox,
   Controller->V2.NewPhysicalDeviceInformation->Channel,
   Controller->V2.NewPhysicalDeviceInformation->TargetID,
  Controller->V2.NewPhysicalDeviceInformation->LogicalUnit - 1);


       DAC960_QueueCommand(Command);
       return;
     }
   if (Controller->V2.StartPhysicalDeviceInformationScan)
     {
       Controller->V2.PhysicalDeviceIndex = 0;
       Controller->V2.NewPhysicalDeviceInformation->Channel = 0;
       Controller->V2.NewPhysicalDeviceInformation->TargetID = 0;
       Controller->V2.NewPhysicalDeviceInformation->LogicalUnit = 0;
       Controller->V2.StartPhysicalDeviceInformationScan = 0;
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
   DAC960_QueueCommand(Command);
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
          [LogicalDriveNumber] = 0;
       Controller->V2.NewLogicalDeviceInformation->LogicalDeviceNumber = 0;
       Controller->V2.StartLogicalDeviceInformationScan = 0;
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
   DAC960_QueueCommand(Command);
   return;
 }
      Controller->MonitoringTimerCount++;
      Controller->MonitoringTimer.expires =
 jiffies + DAC960_HealthStatusMonitoringInterval;
       add_timer(&Controller->MonitoringTimer);
    }
  if (CommandType == DAC960_ImmediateCommand)
    {
      complete(Command->Completion);
      Command->Completion = ((void*)0);
      return;
    }
  if (CommandType == DAC960_QueuedCommand)
    {
      DAC960_V2_KernelCommand_T *KernelCommand = Command->V2.KernelCommand;
      KernelCommand->CommandStatus = CommandStatus;
      KernelCommand->RequestSenseLength = Command->V2.RequestSenseLength;
      KernelCommand->DataTransferLength = Command->V2.DataTransferResidue;
      Command->V2.KernelCommand = ((void*)0);
      DAC960_DeallocateCommand(Command);
      KernelCommand->CompletionFunction(KernelCommand);
      return;
    }





  if (Controller->MonitoringCommandDeferred)
    {
      Controller->MonitoringCommandDeferred = 0;
      DAC960_V2_QueueMonitoringCommand(Command);
      return;
    }



  DAC960_DeallocateCommand(Command);



  wake_up(&Controller->CommandWaitQueue);
}
