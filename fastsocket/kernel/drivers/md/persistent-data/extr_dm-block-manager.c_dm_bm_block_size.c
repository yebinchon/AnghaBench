
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int bufio; } ;


 int dm_bufio_get_block_size (int ) ;

unsigned dm_bm_block_size(struct dm_block_manager *bm)
{
 return dm_bufio_get_block_size(bm->bufio);
}
