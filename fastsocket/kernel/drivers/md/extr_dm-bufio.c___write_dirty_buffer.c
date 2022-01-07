
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dm_buffer {int write_list; int block; int state; } ;


 int B_DIRTY ;
 int B_WRITING ;
 int TASK_UNINTERRUPTIBLE ;
 int WRITE ;
 int clear_bit (int ,int *) ;
 int do_io_schedule ;
 int list_add_tail (int *,struct list_head*) ;
 int submit_io (struct dm_buffer*,int ,int ,int ) ;
 int test_bit (int ,int *) ;
 int wait_on_bit_lock (int *,int ,int ,int ) ;
 int write_endio ;

__attribute__((used)) static void __write_dirty_buffer(struct dm_buffer *b,
     struct list_head *write_list)
{
 if (!test_bit(B_DIRTY, &b->state))
  return;

 clear_bit(B_DIRTY, &b->state);
 wait_on_bit_lock(&b->state, B_WRITING,
    do_io_schedule, TASK_UNINTERRUPTIBLE);

 if (!write_list)
  submit_io(b, WRITE, b->block, write_endio);
 else
  list_add_tail(&b->write_list, write_list);
}
