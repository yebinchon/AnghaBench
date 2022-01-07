
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_block {struct mem_block* prev; struct mem_block* next; scalar_t__ size; int * file_priv; } ;


 int kfree (struct mem_block*) ;

__attribute__((used)) static void free_block(struct mem_block *p)
{
 p->file_priv = ((void*)0);




 if (p->next->file_priv == ((void*)0)) {
  struct mem_block *q = p->next;
  p->size += q->size;
  p->next = q->next;
  p->next->prev = p;
  kfree(q);
 }

 if (p->prev->file_priv == ((void*)0)) {
  struct mem_block *q = p->prev;
  q->size += p->size;
  q->next = p->next;
  q->next->prev = q;
  kfree(p);
 }
}
