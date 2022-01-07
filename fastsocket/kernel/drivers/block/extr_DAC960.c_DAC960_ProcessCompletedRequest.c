
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_5__ {int BlockCount; int * Completion; int DmaDirection; int SegmentCount; int cmd_sglist; TYPE_1__* Controller; struct request* Request; } ;
struct TYPE_4__ {int PCIDevice; } ;
typedef TYPE_2__ DAC960_Command_T ;


 int EIO ;
 int __blk_end_request (struct request*,int,int) ;
 int complete (int *) ;
 int pci_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static inline bool DAC960_ProcessCompletedRequest(DAC960_Command_T *Command,
       bool SuccessfulIO)
{
 struct request *Request = Command->Request;
 int Error = SuccessfulIO ? 0 : -EIO;

 pci_unmap_sg(Command->Controller->PCIDevice, Command->cmd_sglist,
  Command->SegmentCount, Command->DmaDirection);

  if (!__blk_end_request(Request, Error, Command->BlockCount << 9)) {
  if (Command->Completion) {
   complete(Command->Completion);
   Command->Completion = ((void*)0);
  }
  return 1;
 }
 return 0;
}
