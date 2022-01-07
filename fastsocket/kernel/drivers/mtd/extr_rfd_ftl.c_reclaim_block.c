
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {TYPE_3__* mtd; } ;
struct partition {int block_size; int total_blocks; int reserved_block; int data_sectors_per_block; int current_block; TYPE_2__* blocks; TYPE_1__ mbd; } ;
struct TYPE_6__ {int (* sync ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int used_sectors; scalar_t__ free_sectors; scalar_t__ erases; } ;


 int ENOSPC ;
 int erase_block (struct partition*,int) ;
 int move_block_contents (struct partition*,int,int*) ;
 int pr_debug (char*,int,int,scalar_t__) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int reclaim_block(struct partition *part, u_long *old_sector)
{
 int block, best_block, score, old_sector_block;
 int rc;


 if (part->mbd.mtd->sync)
  part->mbd.mtd->sync(part->mbd.mtd);

 score = 0x7fffffff;
 best_block = -1;
 if (*old_sector != -1)
  old_sector_block = *old_sector / part->block_size;
 else
  old_sector_block = -1;

 for (block=0; block<part->total_blocks; block++) {
  int this_score;

  if (block == part->reserved_block)
   continue;






  if (part->blocks[block].free_sectors)
   return 0;

  this_score = part->blocks[block].used_sectors;

  if (block == old_sector_block)
   this_score--;
  else {

   if (part->blocks[block].used_sectors ==
     part->data_sectors_per_block)
    continue;
  }

  this_score += part->blocks[block].erases;

  if (this_score < score) {
   best_block = block;
   score = this_score;
  }
 }

 if (best_block == -1)
  return -ENOSPC;

 part->current_block = -1;
 part->reserved_block = best_block;

 pr_debug("reclaim_block: reclaiming block #%d with %d used "
   "%d free sectors\n", best_block,
   part->blocks[best_block].used_sectors,
   part->blocks[best_block].free_sectors);

 if (part->blocks[best_block].used_sectors)
  rc = move_block_contents(part, best_block, old_sector);
 else
  rc = erase_block(part, best_block);

 return rc;
}
