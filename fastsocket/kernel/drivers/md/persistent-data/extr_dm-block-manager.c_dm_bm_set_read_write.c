
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int read_only; } ;



void dm_bm_set_read_write(struct dm_block_manager *bm)
{
 bm->read_only = 0;
}
