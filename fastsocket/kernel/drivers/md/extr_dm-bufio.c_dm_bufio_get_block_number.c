
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int block; } ;
typedef int sector_t ;



sector_t dm_bufio_get_block_number(struct dm_buffer *b)
{
 return b->block;
}
