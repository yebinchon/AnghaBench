
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_piece {unsigned long size; struct sram_piece* next; } ;


 void* _sram_alloc (unsigned long,struct sram_piece*,struct sram_piece*) ;

__attribute__((used)) static void *_sram_alloc_max(struct sram_piece *pfree_head,
    struct sram_piece *pused_head,
    unsigned long *psize)
{
 struct sram_piece *pslot, *pmax;

 if (!pfree_head || !pused_head)
  return ((void*)0);

 pmax = pslot = pfree_head->next;


 while (pslot != ((void*)0)) {
  if (pslot->size > pmax->size)
   pmax = pslot;
  pslot = pslot->next;
 }

 if (!pmax)
  return ((void*)0);

 *psize = pmax->size;

 return _sram_alloc(*psize, pfree_head, pused_head);
}
