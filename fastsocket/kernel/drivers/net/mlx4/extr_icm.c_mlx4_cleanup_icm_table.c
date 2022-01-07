
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_icm_table {int num_icm; scalar_t__* icm; int coherent; scalar_t__ virt; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_ICM_PAGE_SIZE ;
 int MLX4_TABLE_CHUNK_SIZE ;
 int kfree (scalar_t__*) ;
 int mlx4_UNMAP_ICM (struct mlx4_dev*,scalar_t__,int) ;
 int mlx4_free_icm (struct mlx4_dev*,scalar_t__,int ) ;

void mlx4_cleanup_icm_table(struct mlx4_dev *dev, struct mlx4_icm_table *table)
{
 int i;

 for (i = 0; i < table->num_icm; ++i)
  if (table->icm[i]) {
   mlx4_UNMAP_ICM(dev, table->virt + i * MLX4_TABLE_CHUNK_SIZE,
           MLX4_TABLE_CHUNK_SIZE / MLX4_ICM_PAGE_SIZE);
   mlx4_free_icm(dev, table->icm[i], table->coherent);
  }

 kfree(table->icm);
}
