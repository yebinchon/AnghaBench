
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_block {int start; int size; struct drm_file* file_priv; struct mem_block* next; struct mem_block* prev; } ;
struct drm_file {int dummy; } ;


 int GFP_KERNEL ;
 struct mem_block* kmalloc (int,int ) ;

__attribute__((used)) static struct mem_block *split_block(struct mem_block *p, int start, int size,
         struct drm_file *file_priv)
{

 if (start > p->start) {
  struct mem_block *newblock = kmalloc(sizeof(*newblock),
           GFP_KERNEL);
  if (!newblock)
   goto out;
  newblock->start = start;
  newblock->size = p->size - (start - p->start);
  newblock->file_priv = ((void*)0);
  newblock->next = p->next;
  newblock->prev = p;
  p->next->prev = newblock;
  p->next = newblock;
  p->size -= newblock->size;
  p = newblock;
 }


 if (size < p->size) {
  struct mem_block *newblock = kmalloc(sizeof(*newblock),
           GFP_KERNEL);
  if (!newblock)
   goto out;
  newblock->start = start + size;
  newblock->size = p->size - size;
  newblock->file_priv = ((void*)0);
  newblock->next = p->next;
  newblock->prev = p;
  p->next->prev = newblock;
  p->next = newblock;
  p->size = size;
 }

      out:

 p->file_priv = file_priv;
 return p;
}
