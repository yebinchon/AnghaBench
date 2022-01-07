
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {scalar_t__ block_size; scalar_t__ aux_size; } ;
struct dm_buffer {int data_mode; int data; struct dm_bufio_client* c; } ;
typedef int gfp_t ;


 int adjust_total_allocated (int ,long) ;
 int alloc_buffer_data (struct dm_bufio_client*,int ,int *) ;
 int kfree (struct dm_buffer*) ;
 struct dm_buffer* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static struct dm_buffer *alloc_buffer(struct dm_bufio_client *c, gfp_t gfp_mask)
{
 struct dm_buffer *b = kmalloc(sizeof(struct dm_buffer) + c->aux_size,
          gfp_mask);

 if (!b)
  return ((void*)0);

 b->c = c;

 b->data = alloc_buffer_data(c, gfp_mask, &b->data_mode);
 if (!b->data) {
  kfree(b);
  return ((void*)0);
 }

 adjust_total_allocated(b->data_mode, (long)c->block_size);

 return b;
}
