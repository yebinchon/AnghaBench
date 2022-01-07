
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nouveau_mm_node {int fl_entry; int nl_entry; scalar_t__ offset; int length; } ;
struct nouveau_mm {scalar_t__ heap_nodes; int free; int nodes; scalar_t__ block_size; int mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nouveau_mm_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int rounddown (scalar_t__,scalar_t__) ;
 scalar_t__ roundup (scalar_t__,scalar_t__) ;

int
nouveau_mm_init(struct nouveau_mm *mm, u32 offset, u32 length, u32 block)
{
 struct nouveau_mm_node *node;

 if (block) {
  mutex_init(&mm->mutex);
  INIT_LIST_HEAD(&mm->nodes);
  INIT_LIST_HEAD(&mm->free);
  mm->block_size = block;
  mm->heap_nodes = 0;
 }

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 if (length) {
  node->offset = roundup(offset, mm->block_size);
  node->length = rounddown(offset + length, mm->block_size);
  node->length -= node->offset;
 }

 list_add_tail(&node->nl_entry, &mm->nodes);
 list_add_tail(&node->fl_entry, &mm->free);
 mm->heap_nodes++;
 return 0;
}
