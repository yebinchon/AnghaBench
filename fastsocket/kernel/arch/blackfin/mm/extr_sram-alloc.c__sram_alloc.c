
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sram_piece {size_t size; scalar_t__ paddr; struct sram_piece* next; int pid; } ;
struct TYPE_2__ {int pid; } ;


 int GFP_KERNEL ;
 TYPE_1__* current ;
 struct sram_piece* kmem_cache_alloc (int ,int ) ;
 int sram_piece_cache ;

__attribute__((used)) static void *_sram_alloc(size_t size, struct sram_piece *pfree_head,
  struct sram_piece *pused_head)
{
 struct sram_piece *pslot, *plast, *pavail;

 if (size <= 0 || !pfree_head || !pused_head)
  return ((void*)0);


 size = (size + 3) & ~3;

 pslot = pfree_head->next;
 plast = pfree_head;


 while (pslot != ((void*)0) && size > pslot->size) {
  plast = pslot;
  pslot = pslot->next;
 }

 if (!pslot)
  return ((void*)0);

 if (pslot->size == size) {
  plast->next = pslot->next;
  pavail = pslot;
 } else {
  pavail = kmem_cache_alloc(sram_piece_cache, GFP_KERNEL);

  if (!pavail)
   return ((void*)0);

  pavail->paddr = pslot->paddr;
  pavail->size = size;
  pslot->paddr += size;
  pslot->size -= size;
 }

 pavail->pid = current->pid;

 pslot = pused_head->next;
 plast = pused_head;


 while (pslot != ((void*)0) && pavail->paddr < pslot->paddr) {
  plast = pslot;
  pslot = pslot->next;
 }

 pavail->next = pslot;
 plast->next = pavail;

 return pavail->paddr;
}
