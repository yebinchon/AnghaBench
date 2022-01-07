
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dblock {int * data; } ;


 scalar_t__ BLOCK_END ;
 scalar_t__ dblock_addr (struct dblock const*) ;
 int dblock_len (struct dblock const*) ;

size_t
hermes_blocks_length(const char *first_block, const void *end)
{
 const struct dblock *blk = (const struct dblock *) first_block;
 int total_len = 0;
 int len;

 end -= sizeof(*blk);



 while (((void *) blk <= end) &&
        (dblock_addr(blk) != BLOCK_END)) {
  len = dblock_len(blk);
  total_len += sizeof(*blk) + len;
  blk = (struct dblock *) &blk->data[len];
 }

 return total_len;
}
