
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int state; struct dm_bufio_client* c; } ;


 int BUG_ON (int ) ;
 int B_DIRTY ;
 int B_READING ;
 int LIST_DIRTY ;
 int __relink_lru (struct dm_buffer*,int ) ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void dm_bufio_mark_buffer_dirty(struct dm_buffer *b)
{
 struct dm_bufio_client *c = b->c;

 dm_bufio_lock(c);

 BUG_ON(test_bit(B_READING, &b->state));

 if (!test_and_set_bit(B_DIRTY, &b->state))
  __relink_lru(b, LIST_DIRTY);

 dm_bufio_unlock(c);
}
