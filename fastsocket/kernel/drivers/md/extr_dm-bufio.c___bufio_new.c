
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int hold_count; int state; scalar_t__ write_error; scalar_t__ read_error; } ;
typedef int sector_t ;
typedef enum new_flag { ____Placeholder_new_flag } new_flag ;


 int B_DIRTY ;
 int B_READING ;
 int B_WRITING ;
 int LIST_CLEAN ;
 int NF_FRESH ;
 int NF_GET ;
 int NF_PREFETCH ;
 struct dm_buffer* __alloc_buffer_wait (struct dm_bufio_client*,int) ;
 int __check_watermark (struct dm_bufio_client*,struct list_head*) ;
 struct dm_buffer* __find (struct dm_bufio_client*,int ) ;
 int __free_buffer_wake (struct dm_buffer*) ;
 int __link_buffer (struct dm_buffer*,int ,int ) ;
 int __relink_lru (struct dm_buffer*,int) ;
 scalar_t__ test_bit (int,int*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static struct dm_buffer *__bufio_new(struct dm_bufio_client *c, sector_t block,
         enum new_flag nf, int *need_submit,
         struct list_head *write_list)
{
 struct dm_buffer *b, *new_b = ((void*)0);

 *need_submit = 0;

 b = __find(c, block);
 if (b)
  goto found_buffer;

 if (nf == NF_GET)
  return ((void*)0);

 new_b = __alloc_buffer_wait(c, nf);
 if (!new_b)
  return ((void*)0);





 b = __find(c, block);
 if (b) {
  __free_buffer_wake(new_b);
  goto found_buffer;
 }

 __check_watermark(c, write_list);

 b = new_b;
 b->hold_count = 1;
 b->read_error = 0;
 b->write_error = 0;
 __link_buffer(b, block, LIST_CLEAN);

 if (nf == NF_FRESH) {
  b->state = 0;
  return b;
 }

 b->state = 1 << B_READING;
 *need_submit = 1;

 return b;

found_buffer:
 if (nf == NF_PREFETCH)
  return ((void*)0);







 if (nf == NF_GET && unlikely(test_bit(B_READING, &b->state)))
  return ((void*)0);

 b->hold_count++;
 __relink_lru(b, test_bit(B_DIRTY, &b->state) ||
       test_bit(B_WRITING, &b->state));
 return b;
}
