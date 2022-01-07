
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_block {struct mem_block* next; } ;


 int kfree (struct mem_block*) ;

void radeon_mem_takedown(struct mem_block **heap)
{
 struct mem_block *p;

 if (!*heap)
  return;

 for (p = (*heap)->next; p != *heap;) {
  struct mem_block *q = p;
  p = p->next;
  kfree(q);
 }

 kfree(*heap);
 *heap = ((void*)0);
}
