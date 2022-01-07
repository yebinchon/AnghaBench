
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flash_block_list {int num_blocks; struct flash_block_list* next; TYPE_1__* blocks; } ;
struct TYPE_2__ {struct flash_block_list* data; } ;


 int flash_block_cache ;
 int kmem_cache_free (int ,struct flash_block_list*) ;

__attribute__((used)) static void free_flash_list(struct flash_block_list *f)
{
 struct flash_block_list *next;
 int i;

 while (f) {
  for (i = 0; i < f->num_blocks; i++)
   kmem_cache_free(flash_block_cache, f->blocks[i].data);
  next = f->next;
  kmem_cache_free(flash_block_cache, f);
  f = next;
 }
}
