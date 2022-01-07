
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int bdev; } ;
struct dm_buffer {int block; } ;
typedef int sector_t ;


 int BUG_ON (int ) ;
 int LIST_HEAD (int ) ;
 int NF_PREFETCH ;
 int READ ;
 struct dm_buffer* __bufio_new (struct dm_bufio_client*,int ,int ,int*,int *) ;
 int __flush_write_list (int *,struct dm_bufio_client*) ;
 int bdev_get_queue (int ) ;
 int blk_unplug (int ) ;
 int dm_bufio_cond_resched () ;
 int dm_bufio_in_request () ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_release (struct dm_buffer*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int list_empty (int *) ;
 int read_endio ;
 int submit_io (struct dm_buffer*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int write_list ;

void dm_bufio_prefetch(struct dm_bufio_client *c,
         sector_t block, unsigned n_blocks)
{
 LIST_HEAD(write_list);

 BUG_ON(dm_bufio_in_request());

 dm_bufio_lock(c);

 for (; n_blocks--; block++) {
  int need_submit;
  struct dm_buffer *b;
  b = __bufio_new(c, block, NF_PREFETCH, &need_submit,
    &write_list);
  if (unlikely(!list_empty(&write_list))) {
   dm_bufio_unlock(c);
   blk_unplug(bdev_get_queue(c->bdev));
   __flush_write_list(&write_list, c);
   dm_bufio_lock(c);
  }
  if (unlikely(b != ((void*)0))) {
   dm_bufio_unlock(c);

   if (need_submit)
    submit_io(b, READ, b->block, read_endio);
   dm_bufio_release(b);

   dm_bufio_cond_resched();

   if (!n_blocks)
    goto flush_plug;
   dm_bufio_lock(c);
  }
 }

 dm_bufio_unlock(c);

flush_plug:
 blk_unplug(bdev_get_queue(c->bdev));
}
