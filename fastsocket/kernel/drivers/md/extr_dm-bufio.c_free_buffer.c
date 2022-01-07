
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {scalar_t__ block_size; } ;
struct dm_buffer {int data_mode; int data; struct dm_bufio_client* c; } ;


 int adjust_total_allocated (int ,long) ;
 int free_buffer_data (struct dm_bufio_client*,int ,int ) ;
 int kfree (struct dm_buffer*) ;

__attribute__((used)) static void free_buffer(struct dm_buffer *b)
{
 struct dm_bufio_client *c = b->c;

 adjust_total_allocated(b->data_mode, -(long)c->block_size);

 free_buffer_data(c, b->data, b->data_mode);
 kfree(b);
}
