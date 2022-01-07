
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {unsigned long last_accessed; scalar_t__ hold_count; int state; } ;
typedef int gfp_t ;


 int B_DIRTY ;
 int B_READING ;
 int B_WRITING ;
 int __GFP_IO ;
 int __free_buffer_wake (struct dm_buffer*) ;
 int __make_buffer_clean (struct dm_buffer*) ;
 int __unlink_buffer (struct dm_buffer*) ;
 unsigned long jiffies ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __cleanup_old_buffer(struct dm_buffer *b, gfp_t gfp,
    unsigned long max_jiffies)
{
 if (jiffies - b->last_accessed < max_jiffies)
  return 1;

 if (!(gfp & __GFP_IO)) {
  if (test_bit(B_READING, &b->state) ||
      test_bit(B_WRITING, &b->state) ||
      test_bit(B_DIRTY, &b->state))
   return 1;
 }

 if (b->hold_count)
  return 1;

 __make_buffer_clean(b);
 __unlink_buffer(b);
 __free_buffer_wake(b);

 return 0;
}
