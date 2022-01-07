
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int bufio; scalar_t__ read_only; } ;


 int EPERM ;
 int dm_bufio_write_dirty_buffers (int ) ;

int dm_bm_flush(struct dm_block_manager *bm)
{
 if (bm->read_only)
  return -EPERM;

 return dm_bufio_write_dirty_buffers(bm->bufio);
}
