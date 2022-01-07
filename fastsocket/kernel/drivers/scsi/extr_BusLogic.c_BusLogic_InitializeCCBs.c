
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int BaseAddress; } ;
struct BusLogic_HostAdapter {int AllocatedCCBs; struct BusLogic_CCB* All_CCBs; struct BusLogic_CCB* Free_CCBs; TYPE_1__ FlashPointInfo; } ;
struct BusLogic_CCB {int AllocationGroupSize; struct BusLogic_CCB* NextAll; struct BusLogic_CCB* Next; int BaseAddress; int CallbackFunction; scalar_t__ DMA_Handle; struct BusLogic_HostAdapter* HostAdapter; int Status; scalar_t__ AllocationGroupHead; } ;
typedef scalar_t__ dma_addr_t ;


 int BusLogic_CCB_Free ;
 scalar_t__ BusLogic_FlashPointHostAdapterP (struct BusLogic_HostAdapter*) ;
 int BusLogic_QueueCompletedCCB ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void BusLogic_InitializeCCBs(struct BusLogic_HostAdapter *HostAdapter, void *BlockPointer, int BlockSize, dma_addr_t BlockPointerHandle)
{
 struct BusLogic_CCB *CCB = (struct BusLogic_CCB *) BlockPointer;
 unsigned int offset = 0;
 memset(BlockPointer, 0, BlockSize);
 CCB->AllocationGroupHead = BlockPointerHandle;
 CCB->AllocationGroupSize = BlockSize;
 while ((BlockSize -= sizeof(struct BusLogic_CCB)) >= 0) {
  CCB->Status = BusLogic_CCB_Free;
  CCB->HostAdapter = HostAdapter;
  CCB->DMA_Handle = (u32) BlockPointerHandle + offset;
  if (BusLogic_FlashPointHostAdapterP(HostAdapter)) {
   CCB->CallbackFunction = BusLogic_QueueCompletedCCB;
   CCB->BaseAddress = HostAdapter->FlashPointInfo.BaseAddress;
  }
  CCB->Next = HostAdapter->Free_CCBs;
  CCB->NextAll = HostAdapter->All_CCBs;
  HostAdapter->Free_CCBs = CCB;
  HostAdapter->All_CCBs = CCB;
  HostAdapter->AllocatedCCBs++;
  CCB++;
  offset += sizeof(struct BusLogic_CCB);
 }
}
