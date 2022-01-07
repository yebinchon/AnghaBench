
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_6__ {size_t LogicalDriveNumber; scalar_t__ DmaDirection; int SegmentCount; int BlockCount; int BlockNumber; int cmd_sglist; struct request* Request; int CommandType; TYPE_1__* Controller; } ;
struct TYPE_5__ {int PCIDevice; struct request_queue** RequestQueue; } ;
typedef TYPE_1__ DAC960_Controller_T ;
typedef TYPE_2__ DAC960_Command_T ;


 int DAC960_QueueReadWriteCommand (TYPE_2__*) ;
 int DAC960_ReadRetryCommand ;
 int DAC960_WriteRetryCommand ;
 scalar_t__ PCI_DMA_FROMDEVICE ;
 int blk_rq_map_sg (struct request_queue*,struct request*,int ) ;
 int blk_rq_pos (struct request*) ;
 int pci_map_sg (int ,int ,int,scalar_t__) ;

__attribute__((used)) static void DAC960_queue_partial_rw(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  struct request *Request = Command->Request;
  struct request_queue *req_q = Controller->RequestQueue[Command->LogicalDriveNumber];

  if (Command->DmaDirection == PCI_DMA_FROMDEVICE)
    Command->CommandType = DAC960_ReadRetryCommand;
  else
    Command->CommandType = DAC960_WriteRetryCommand;







  (void)blk_rq_map_sg(req_q, Command->Request, Command->cmd_sglist);

  (void)pci_map_sg(Controller->PCIDevice, Command->cmd_sglist, 1, Command->DmaDirection);






  Command->SegmentCount = 1;
  Command->BlockNumber = blk_rq_pos(Request);
  Command->BlockCount = 1;
  DAC960_QueueReadWriteCommand(Command);
  return;
}
