
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mac_table {int max; int * entries; } ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int mlx4_warn (struct mlx4_dev*,char*) ;

__attribute__((used)) static int validate_index(struct mlx4_dev *dev,
     struct mlx4_mac_table *table, int index)
{
 int err = 0;

 if (index < 0 || index >= table->max || !table->entries[index]) {
  mlx4_warn(dev, "No valid Mac entry for the given index\n");
  err = -EINVAL;
 }
 return err;
}
