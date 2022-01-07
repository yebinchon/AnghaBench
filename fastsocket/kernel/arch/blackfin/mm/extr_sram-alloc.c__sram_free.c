
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_piece {void const* paddr; int size; struct sram_piece* next; scalar_t__ pid; } ;


 int kmem_cache_free (int ,struct sram_piece*) ;
 int sram_piece_cache ;

__attribute__((used)) static int _sram_free(const void *addr,
   struct sram_piece *pfree_head,
   struct sram_piece *pused_head)
{
 struct sram_piece *pslot, *plast, *pavail;

 if (!pfree_head || !pused_head)
  return -1;


 pslot = pused_head->next;
 plast = pused_head;


 while (pslot != ((void*)0) && pslot->paddr != addr) {
  plast = pslot;
  pslot = pslot->next;
 }

 if (!pslot)
  return -1;

 plast->next = pslot->next;
 pavail = pslot;
 pavail->pid = 0;


 pslot = pfree_head->next;
 plast = pfree_head;

 while (pslot != ((void*)0) && addr > pslot->paddr) {
  plast = pslot;
  pslot = pslot->next;
 }

 if (plast != pfree_head && plast->paddr + plast->size == pavail->paddr) {
  plast->size += pavail->size;
  kmem_cache_free(sram_piece_cache, pavail);
 } else {
  pavail->next = plast->next;
  plast->next = pavail;
  plast = pavail;
 }

 if (pslot && plast->paddr + plast->size == pslot->paddr) {
  plast->size += pslot->size;
  plast->next = pslot->next;
  kmem_cache_free(sram_piece_cache, pslot);
 }

 return 0;
}
