
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_bitmap {int max; int reserved_top; int avail; int lock; int table; } ;


 int bitmap_clear (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx4_bitmap_free_range(struct mlx4_bitmap *bitmap, u32 obj, int cnt)
{
 obj &= bitmap->max + bitmap->reserved_top - 1;

 spin_lock(&bitmap->lock);
 bitmap_clear(bitmap->table, obj, cnt);
 bitmap->avail += cnt;
 spin_unlock(&bitmap->lock);
}
