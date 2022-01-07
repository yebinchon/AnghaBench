
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_block {int start; int size; struct mem_block* prev; struct mem_block* next; struct drm_file* file_priv; } ;
struct drm_file {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mem_block*) ;
 struct mem_block* kmalloc (int,int ) ;
 struct mem_block* kzalloc (int,int ) ;

__attribute__((used)) static int init_heap(struct mem_block **heap, int start, int size)
{
 struct mem_block *blocks = kmalloc(sizeof(*blocks), GFP_KERNEL);

 if (!blocks)
  return -ENOMEM;

 *heap = kzalloc(sizeof(**heap), GFP_KERNEL);
 if (!*heap) {
  kfree(blocks);
  return -ENOMEM;
 }

 blocks->start = start;
 blocks->size = size;
 blocks->file_priv = ((void*)0);
 blocks->next = blocks->prev = *heap;

 (*heap)->file_priv = (struct drm_file *) - 1;
 (*heap)->next = (*heap)->prev = blocks;
 return 0;
}
