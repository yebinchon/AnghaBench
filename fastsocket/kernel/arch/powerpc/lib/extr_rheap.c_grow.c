
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int max_blocks; int flags; int empty_slots; int empty_list; TYPE_2__* block; int taken_list; int free_list; } ;
typedef TYPE_1__ rh_info_t ;
struct TYPE_9__ {int list; } ;
typedef TYPE_2__ rh_block_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int RHIF_STATIC_BLOCK ;
 int fixup (unsigned long,unsigned long,int,int *) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int grow(rh_info_t * info, int max_blocks)
{
 rh_block_t *block, *blk;
 int i, new_blocks;
 int delta;
 unsigned long blks, blke;

 if (max_blocks <= info->max_blocks)
  return -EINVAL;

 new_blocks = max_blocks - info->max_blocks;

 block = kmalloc(sizeof(rh_block_t) * max_blocks, GFP_ATOMIC);
 if (block == ((void*)0))
  return -ENOMEM;

 if (info->max_blocks > 0) {


  memcpy(block, info->block,
         sizeof(rh_block_t) * info->max_blocks);

  delta = (char *)block - (char *)info->block;


  blks = (unsigned long)info->block;
  blke = (unsigned long)(info->block + info->max_blocks);

  for (i = 0, blk = block; i < info->max_blocks; i++, blk++)
   fixup(blks, blke, delta, &blk->list);

  fixup(blks, blke, delta, &info->empty_list);
  fixup(blks, blke, delta, &info->free_list);
  fixup(blks, blke, delta, &info->taken_list);


  if ((info->flags & RHIF_STATIC_BLOCK) == 0)
   kfree(info->block);
 }

 info->block = block;
 info->empty_slots += new_blocks;
 info->max_blocks = max_blocks;
 info->flags &= ~RHIF_STATIC_BLOCK;


 blk = block + info->max_blocks - new_blocks;
 for (i = 0; i < new_blocks; i++, blk++)
  list_add(&blk->list, &info->empty_list);

 return 0;
}
