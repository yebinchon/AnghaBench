
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_bitmap {int dummy; } ;


 int mlx4_bitmap_free_range (struct mlx4_bitmap*,int ,int) ;

void mlx4_bitmap_free(struct mlx4_bitmap *bitmap, u32 obj)
{
 mlx4_bitmap_free_range(bitmap, obj, 1);
}
