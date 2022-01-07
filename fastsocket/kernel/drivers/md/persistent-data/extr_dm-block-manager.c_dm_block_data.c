
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block {int dummy; } ;


 void* dm_bufio_get_block_data (int ) ;
 int to_buffer (struct dm_block*) ;

void *dm_block_data(struct dm_block *b)
{
 return dm_bufio_get_block_data(to_buffer(b));
}
