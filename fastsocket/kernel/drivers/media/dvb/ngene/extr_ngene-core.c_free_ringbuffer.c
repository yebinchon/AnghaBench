
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ngene {int pci_dev; } ;
struct SRingBufferDescriptor {scalar_t__ NumBuffers; int PAHead; struct SBufferHeader* Head; int MemSize; int PASCListMem; struct SBufferHeader* SCListMem; int SCListMemSize; int Buffer2Length; int Buffer1Length; } ;
struct SBufferHeader {TYPE_2__* scList2; struct SBufferHeader* Buffer2; TYPE_1__* scList1; struct SBufferHeader* Buffer1; struct SBufferHeader* Next; } ;
struct TYPE_4__ {int Address; } ;
struct TYPE_3__ {int Address; } ;


 int pci_free_consistent (int ,int ,struct SBufferHeader*,int ) ;

__attribute__((used)) static void free_ringbuffer(struct ngene *dev, struct SRingBufferDescriptor *rb)
{
 struct SBufferHeader *Cur = rb->Head;
 u32 j;

 if (!Cur)
  return;

 for (j = 0; j < rb->NumBuffers; j++, Cur = Cur->Next) {
  if (Cur->Buffer1)
   pci_free_consistent(dev->pci_dev,
         rb->Buffer1Length,
         Cur->Buffer1,
         Cur->scList1->Address);

  if (Cur->Buffer2)
   pci_free_consistent(dev->pci_dev,
         rb->Buffer2Length,
         Cur->Buffer2,
         Cur->scList2->Address);
 }

 if (rb->SCListMem)
  pci_free_consistent(dev->pci_dev, rb->SCListMemSize,
        rb->SCListMem, rb->PASCListMem);

 pci_free_consistent(dev->pci_dev, rb->MemSize, rb->Head, rb->PAHead);
}
