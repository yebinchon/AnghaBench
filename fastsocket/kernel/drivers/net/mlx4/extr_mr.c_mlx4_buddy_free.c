
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_buddy {int lock; int * num_free; int * bits; } ;


 int clear_bit (int,int ) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void mlx4_buddy_free(struct mlx4_buddy *buddy, u32 seg, int order)
{
 seg >>= order;

 spin_lock(&buddy->lock);

 while (test_bit(seg ^ 1, buddy->bits[order])) {
  clear_bit(seg ^ 1, buddy->bits[order]);
  --buddy->num_free[order];
  seg >>= 1;
  ++order;
 }

 set_bit(seg, buddy->bits[order]);
 ++buddy->num_free[order];

 spin_unlock(&buddy->lock);
}
