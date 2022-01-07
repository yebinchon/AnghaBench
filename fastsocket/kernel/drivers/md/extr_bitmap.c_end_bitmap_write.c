
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {struct bitmap* b_private; } ;
struct bitmap {int write_wait; int pending_writes; int flags; } ;


 int BITMAP_WRITE_ERROR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void end_bitmap_write(struct buffer_head *bh, int uptodate)
{
 struct bitmap *bitmap = bh->b_private;

 if (!uptodate)
  set_bit(BITMAP_WRITE_ERROR, &bitmap->flags);
 if (atomic_dec_and_test(&bitmap->pending_writes))
  wake_up(&bitmap->write_wait);
}
