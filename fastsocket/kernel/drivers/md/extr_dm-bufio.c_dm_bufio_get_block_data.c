
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {void* data; } ;



void *dm_bufio_get_block_data(struct dm_buffer *b)
{
 return b->data;
}
