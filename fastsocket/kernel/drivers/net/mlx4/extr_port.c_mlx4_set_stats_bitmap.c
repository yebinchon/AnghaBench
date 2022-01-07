
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_STATS_ERROR_COUNTERS_MASK ;
 int MLX4_STATS_PORT_COUNTERS_MASK ;
 int MLX4_STATS_TRAFFIC_COUNTERS_MASK ;
 int MLX4_STATS_TRAFFIC_DROPS_MASK ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 int mlx4_is_mfunc (struct mlx4_dev*) ;

void mlx4_set_stats_bitmap(struct mlx4_dev *dev, u64 *stats_bitmap)
{
 if (!mlx4_is_mfunc(dev)) {
  *stats_bitmap = 0;
  return;
 }

 *stats_bitmap = (MLX4_STATS_TRAFFIC_COUNTERS_MASK |
    MLX4_STATS_TRAFFIC_DROPS_MASK |
    MLX4_STATS_PORT_COUNTERS_MASK);

 if (mlx4_is_master(dev))
  *stats_bitmap |= MLX4_STATS_ERROR_COUNTERS_MASK;
}
