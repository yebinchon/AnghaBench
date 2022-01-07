
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {TYPE_1__* rq_disk; int end_io_data; } ;
struct TYPE_10__ {long LogicalDriveNumber; int DmaDirection; int SegmentCount; int cmd_sglist; struct request* Request; int BlockCount; int BlockNumber; int Completion; int CommandType; } ;
struct TYPE_9__ {int PCIDevice; } ;
struct TYPE_8__ {scalar_t__ private_data; } ;
typedef TYPE_2__ DAC960_Controller_T ;
typedef TYPE_3__ DAC960_Command_T ;


 TYPE_3__* DAC960_AllocateCommand (TYPE_2__*) ;
 int DAC960_QueueReadWriteCommand (TYPE_3__*) ;
 int DAC960_ReadCommand ;
 int DAC960_WriteCommand ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ READ ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_rq_map_sg (struct request_queue*,struct request*,int ) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int blk_start_request (struct request*) ;
 int pci_map_sg (int ,int ,int ,int ) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static int DAC960_process_queue(DAC960_Controller_T *Controller, struct request_queue *req_q)
{
 struct request *Request;
 DAC960_Command_T *Command;

   while(1) {
 Request = blk_peek_request(req_q);
 if (!Request)
  return 1;

 Command = DAC960_AllocateCommand(Controller);
 if (Command == ((void*)0))
  return 0;

 if (rq_data_dir(Request) == READ) {
  Command->DmaDirection = PCI_DMA_FROMDEVICE;
  Command->CommandType = DAC960_ReadCommand;
 } else {
  Command->DmaDirection = PCI_DMA_TODEVICE;
  Command->CommandType = DAC960_WriteCommand;
 }
 Command->Completion = Request->end_io_data;
 Command->LogicalDriveNumber = (long)Request->rq_disk->private_data;
 Command->BlockNumber = blk_rq_pos(Request);
 Command->BlockCount = blk_rq_sectors(Request);
 Command->Request = Request;
 blk_start_request(Request);
 Command->SegmentCount = blk_rq_map_sg(req_q,
    Command->Request, Command->cmd_sglist);

 Command->SegmentCount = pci_map_sg(Controller->PCIDevice, Command->cmd_sglist,
   Command->SegmentCount, Command->DmaDirection);

 DAC960_QueueReadWriteCommand(Command);
  }
}
