
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int alignment; int max_blocks; int empty_slots; int flags; int empty_list; int taken_list; int free_list; TYPE_2__* block; } ;
typedef TYPE_1__ rh_info_t ;
struct TYPE_6__ {int list; } ;
typedef TYPE_2__ rh_block_t ;


 int INIT_LIST_HEAD (int *) ;
 int RHIF_STATIC_BLOCK ;
 int RHIF_STATIC_INFO ;
 int list_add (int *,int *) ;

void rh_init(rh_info_t * info, unsigned int alignment, int max_blocks,
      rh_block_t * block)
{
 int i;
 rh_block_t *blk;


 if ((alignment & (alignment - 1)) != 0)
  return;

 info->alignment = alignment;


 info->block = block;
 info->max_blocks = max_blocks;
 info->empty_slots = max_blocks;
 info->flags = RHIF_STATIC_INFO | RHIF_STATIC_BLOCK;

 INIT_LIST_HEAD(&info->empty_list);
 INIT_LIST_HEAD(&info->free_list);
 INIT_LIST_HEAD(&info->taken_list);


 for (i = 0, blk = block; i < max_blocks; i++, blk++)
  list_add(&blk->list, &info->empty_list);
}
