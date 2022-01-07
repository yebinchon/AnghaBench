
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_10__ {int LogicalDriveNumber; int TransferLength; } ;
struct TYPE_12__ {int ScatterGatherCount; void* BusAddress; int LogicalBlockAddress; TYPE_1__ LD; int CommandOpcode; } ;
struct TYPE_14__ {TYPE_3__ Type5; } ;
struct TYPE_11__ {void* ScatterGatherListDMA; struct scatterlist* ScatterList; TYPE_4__* ScatterGatherList; TYPE_5__ CommandMailbox; } ;
struct TYPE_15__ {int SegmentCount; scalar_t__ DmaDirection; TYPE_2__ V1; int BlockNumber; int LogicalDriveNumber; int BlockCount; int * Controller; } ;
struct TYPE_13__ {scalar_t__ SegmentByteCount; void* SegmentDataPointer; } ;
typedef TYPE_4__ DAC960_V1_ScatterGatherSegment_T ;
typedef TYPE_5__ DAC960_V1_CommandMailbox_T ;
typedef int DAC960_Controller_T ;
typedef TYPE_6__ DAC960_Command_T ;
typedef scalar_t__ DAC960_ByteCount32_T ;
typedef void* DAC960_BusAddress32_T ;


 int DAC960_QueueCommand (TYPE_6__*) ;
 int DAC960_V1_ClearCommand (TYPE_6__*) ;
 int DAC960_V1_Read ;
 int DAC960_V1_ReadWithScatterGather ;
 int DAC960_V1_Write ;
 int DAC960_V1_WriteWithScatterGather ;
 scalar_t__ PCI_DMA_FROMDEVICE ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void DAC960_V1_QueueReadWriteCommand(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  DAC960_V1_CommandMailbox_T *CommandMailbox = &Command->V1.CommandMailbox;
  DAC960_V1_ScatterGatherSegment_T *ScatterGatherList =
     Command->V1.ScatterGatherList;
  struct scatterlist *ScatterList = Command->V1.ScatterList;

  DAC960_V1_ClearCommand(Command);

  if (Command->SegmentCount == 1)
    {
      if (Command->DmaDirection == PCI_DMA_FROMDEVICE)
 CommandMailbox->Type5.CommandOpcode = DAC960_V1_Read;
      else
        CommandMailbox->Type5.CommandOpcode = DAC960_V1_Write;

      CommandMailbox->Type5.LD.TransferLength = Command->BlockCount;
      CommandMailbox->Type5.LD.LogicalDriveNumber = Command->LogicalDriveNumber;
      CommandMailbox->Type5.LogicalBlockAddress = Command->BlockNumber;
      CommandMailbox->Type5.BusAddress =
   (DAC960_BusAddress32_T)sg_dma_address(ScatterList);
    }
  else
    {
      int i;

      if (Command->DmaDirection == PCI_DMA_FROMDEVICE)
 CommandMailbox->Type5.CommandOpcode = DAC960_V1_ReadWithScatterGather;
      else
 CommandMailbox->Type5.CommandOpcode = DAC960_V1_WriteWithScatterGather;

      CommandMailbox->Type5.LD.TransferLength = Command->BlockCount;
      CommandMailbox->Type5.LD.LogicalDriveNumber = Command->LogicalDriveNumber;
      CommandMailbox->Type5.LogicalBlockAddress = Command->BlockNumber;
      CommandMailbox->Type5.BusAddress = Command->V1.ScatterGatherListDMA;

      CommandMailbox->Type5.ScatterGatherCount = Command->SegmentCount;

      for (i = 0; i < Command->SegmentCount; i++, ScatterList++, ScatterGatherList++) {
  ScatterGatherList->SegmentDataPointer =
   (DAC960_BusAddress32_T)sg_dma_address(ScatterList);
  ScatterGatherList->SegmentByteCount =
   (DAC960_ByteCount32_T)sg_dma_len(ScatterList);
      }
    }
  DAC960_QueueCommand(Command);
}
