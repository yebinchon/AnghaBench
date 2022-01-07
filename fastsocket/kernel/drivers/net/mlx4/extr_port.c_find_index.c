
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_mac_table {int * entries; } ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int MLX4_MAC_MASK ;
 int MLX4_MAX_MAC_NUM ;
 int be64_to_cpu (int ) ;

__attribute__((used)) static int find_index(struct mlx4_dev *dev,
        struct mlx4_mac_table *table, u64 mac)
{
 int i;

 for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
  if ((mac & MLX4_MAC_MASK) ==
      (MLX4_MAC_MASK & be64_to_cpu(table->entries[i])))
   return i;
 }

 return -EINVAL;
}
