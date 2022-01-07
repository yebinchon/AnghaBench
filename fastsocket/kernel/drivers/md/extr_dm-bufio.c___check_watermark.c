
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dm_bufio_client {unsigned long* n_buffers; } ;
struct dm_buffer {int dummy; } ;


 size_t LIST_CLEAN ;
 size_t LIST_DIRTY ;
 int __free_buffer_wake (struct dm_buffer*) ;
 int __get_memory_limit (struct dm_bufio_client*,unsigned long*,unsigned long*) ;
 struct dm_buffer* __get_unclaimed_buffer (struct dm_bufio_client*) ;
 int __write_dirty_buffers_async (struct dm_bufio_client*,int,struct list_head*) ;
 int dm_bufio_cond_resched () ;

__attribute__((used)) static void __check_watermark(struct dm_bufio_client *c,
         struct list_head *write_list)
{
 unsigned long threshold_buffers, limit_buffers;

 __get_memory_limit(c, &threshold_buffers, &limit_buffers);

 while (c->n_buffers[LIST_CLEAN] + c->n_buffers[LIST_DIRTY] >
        limit_buffers) {

  struct dm_buffer *b = __get_unclaimed_buffer(c);

  if (!b)
   return;

  __free_buffer_wake(b);
  dm_bufio_cond_resched();
 }

 if (c->n_buffers[LIST_DIRTY] > threshold_buffers)
  __write_dirty_buffers_async(c, 1, write_list);
}
