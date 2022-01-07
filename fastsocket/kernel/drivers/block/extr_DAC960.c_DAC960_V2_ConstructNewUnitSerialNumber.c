
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int NewInquiryUnitSerialNumberDMA; } ;
struct TYPE_18__ {TYPE_3__ V2; } ;
struct TYPE_15__ {TYPE_4__* ScatterGatherSegments; } ;
struct TYPE_12__ {int LogicalUnit; int TargetID; int Channel; } ;
struct TYPE_11__ {int DataTransferControllerToHost; int NoAutoRequestSense; } ;
struct TYPE_16__ {int DataTransferSize; int CDBLength; int* SCSI_CDB; TYPE_5__ DataTransferMemoryAddress; TYPE_2__ PhysicalDevice; TYPE_1__ CommandControlBits; int CommandOpcode; } ;
struct TYPE_17__ {TYPE_6__ SCSI_10; } ;
struct TYPE_14__ {int SegmentByteCount; int SegmentDataPointer; } ;
typedef TYPE_7__ DAC960_V2_CommandMailbox_T ;
typedef int DAC960_SCSI_Inquiry_UnitSerialNumber_T ;
typedef TYPE_8__ DAC960_Controller_T ;


 int DAC960_V2_SCSI_10_Passthru ;

__attribute__((used)) static void DAC960_V2_ConstructNewUnitSerialNumber(
 DAC960_Controller_T *Controller,
 DAC960_V2_CommandMailbox_T *CommandMailbox, int Channel, int TargetID,
 int LogicalUnit)
{
      CommandMailbox->SCSI_10.CommandOpcode = DAC960_V2_SCSI_10_Passthru;
      CommandMailbox->SCSI_10.CommandControlBits
        .DataTransferControllerToHost = 1;
      CommandMailbox->SCSI_10.CommandControlBits
        .NoAutoRequestSense = 1;
      CommandMailbox->SCSI_10.DataTransferSize =
 sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T);
      CommandMailbox->SCSI_10.PhysicalDevice.LogicalUnit = LogicalUnit;
      CommandMailbox->SCSI_10.PhysicalDevice.TargetID = TargetID;
      CommandMailbox->SCSI_10.PhysicalDevice.Channel = Channel;
      CommandMailbox->SCSI_10.CDBLength = 6;
      CommandMailbox->SCSI_10.SCSI_CDB[0] = 0x12;
      CommandMailbox->SCSI_10.SCSI_CDB[1] = 1;
      CommandMailbox->SCSI_10.SCSI_CDB[2] = 0x80;
      CommandMailbox->SCSI_10.SCSI_CDB[3] = 0;
      CommandMailbox->SCSI_10.SCSI_CDB[4] =
 sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T);
      CommandMailbox->SCSI_10.SCSI_CDB[5] = 0;
      CommandMailbox->SCSI_10.DataTransferMemoryAddress
        .ScatterGatherSegments[0]
        .SegmentDataPointer =
  Controller->V2.NewInquiryUnitSerialNumberDMA;
      CommandMailbox->SCSI_10.DataTransferMemoryAddress
        .ScatterGatherSegments[0]
        .SegmentByteCount =
  CommandMailbox->SCSI_10.DataTransferSize;
}
