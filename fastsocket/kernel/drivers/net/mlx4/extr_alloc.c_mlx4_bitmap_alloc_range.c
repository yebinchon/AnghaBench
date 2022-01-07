
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_bitmap {int max; int last; int top; int reserved_top; int mask; int avail; int lock; int table; } ;


 int bitmap_find_next_zero_area (int ,int,int,int,int) ;
 int bitmap_set (int ,int,int) ;
 scalar_t__ likely (int) ;
 int mlx4_bitmap_alloc (struct mlx4_bitmap*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u32 mlx4_bitmap_alloc_range(struct mlx4_bitmap *bitmap, int cnt, int align)
{
 u32 obj;

 if (likely(cnt == 1 && align == 1))
  return mlx4_bitmap_alloc(bitmap);

 spin_lock(&bitmap->lock);

 obj = bitmap_find_next_zero_area(bitmap->table, bitmap->max,
    bitmap->last, cnt, align - 1);
 if (obj >= bitmap->max) {
  bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
    & bitmap->mask;
  obj = bitmap_find_next_zero_area(bitmap->table, bitmap->max,
      0, cnt, align - 1);
 }

 if (obj < bitmap->max) {
  bitmap_set(bitmap->table, obj, cnt);
  if (obj == bitmap->last) {
   bitmap->last = (obj + cnt);
   if (bitmap->last >= bitmap->max)
    bitmap->last = 0;
  }
  obj |= bitmap->top;
 } else
  obj = -1;

 if (obj != -1)
  bitmap->avail -= cnt;

 spin_unlock(&bitmap->lock);

 return obj;
}
