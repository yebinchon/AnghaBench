
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partition {int current_block; int total_blocks; int reserved_block; TYPE_1__* blocks; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ free_sectors; } ;


 scalar_t__ BLOCK_UNUSED ;
 int erase_block (struct partition*,int) ;
 int jiffies ;

__attribute__((used)) static int find_free_block(struct partition *part)
{
 int block, stop;

 block = part->current_block == -1 ?
   jiffies % part->total_blocks : part->current_block;
 stop = block;

 do {
  if (part->blocks[block].free_sectors &&
    block != part->reserved_block)
   return block;

  if (part->blocks[block].state == BLOCK_UNUSED)
   erase_block(part, block);

  if (++block >= part->total_blocks)
   block = 0;

 } while (block != stop);

 return -1;
}
