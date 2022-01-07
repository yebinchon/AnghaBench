
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int hold_count; int list_mode; int state; int block; struct dm_bufio_client* c; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int B_DIRTY ;
 int B_READING ;
 int B_WRITING ;
 int LIST_DIRTY ;
 int TASK_UNINTERRUPTIBLE ;
 int WRITE ;
 struct dm_buffer* __find (struct dm_bufio_client*,int ) ;
 int __free_buffer_wake (struct dm_buffer*) ;
 int __link_buffer (struct dm_buffer*,int ,int ) ;
 int __make_buffer_clean (struct dm_buffer*) ;
 int __unlink_buffer (struct dm_buffer*) ;
 int __wait_for_free_buffer (struct dm_bufio_client*) ;
 int __write_dirty_buffer (struct dm_buffer*,int *) ;
 int dm_bufio_in_request () ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_release (struct dm_buffer*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int do_io_schedule ;
 int set_bit (int ,int *) ;
 int submit_io (struct dm_buffer*,int ,int ,int ) ;
 int test_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ,int ) ;
 int wait_on_bit_lock (int *,int ,int ,int ) ;
 int write_endio ;

void dm_bufio_release_move(struct dm_buffer *b, sector_t new_block)
{
 struct dm_bufio_client *c = b->c;
 struct dm_buffer *new;

 BUG_ON(dm_bufio_in_request());

 dm_bufio_lock(c);

retry:
 new = __find(c, new_block);
 if (new) {
  if (new->hold_count) {
   __wait_for_free_buffer(c);
   goto retry;
  }





  __make_buffer_clean(new);
  __unlink_buffer(new);
  __free_buffer_wake(new);
 }

 BUG_ON(!b->hold_count);
 BUG_ON(test_bit(B_READING, &b->state));

 __write_dirty_buffer(b, ((void*)0));
 if (b->hold_count == 1) {
  wait_on_bit(&b->state, B_WRITING,
       do_io_schedule, TASK_UNINTERRUPTIBLE);
  set_bit(B_DIRTY, &b->state);
  __unlink_buffer(b);
  __link_buffer(b, new_block, LIST_DIRTY);
 } else {
  sector_t old_block;
  wait_on_bit_lock(&b->state, B_WRITING,
     do_io_schedule, TASK_UNINTERRUPTIBLE);







  old_block = b->block;
  __unlink_buffer(b);
  __link_buffer(b, new_block, b->list_mode);
  submit_io(b, WRITE, new_block, write_endio);
  wait_on_bit(&b->state, B_WRITING,
       do_io_schedule, TASK_UNINTERRUPTIBLE);
  __unlink_buffer(b);
  __link_buffer(b, old_block, b->list_mode);
 }

 dm_bufio_unlock(c);
 dm_bufio_release(b);
}
