
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int dm_bufio_get_block_number (int ) ;
 int to_buffer (struct dm_block*) ;

dm_block_t dm_block_location(struct dm_block *b)
{
 return dm_bufio_get_block_number(to_buffer(b));
}
