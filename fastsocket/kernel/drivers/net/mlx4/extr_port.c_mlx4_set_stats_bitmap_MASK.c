#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int MLX4_STATS_ERROR_COUNTERS_MASK ; 
 int MLX4_STATS_PORT_COUNTERS_MASK ; 
 int MLX4_STATS_TRAFFIC_COUNTERS_MASK ; 
 int MLX4_STATS_TRAFFIC_DROPS_MASK ; 
 scalar_t__ FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 

void FUNC2(struct mlx4_dev *dev, u64 *stats_bitmap)
{
	if (!FUNC1(dev)) {
		*stats_bitmap = 0;
		return;
	}

	*stats_bitmap = (MLX4_STATS_TRAFFIC_COUNTERS_MASK |
			 MLX4_STATS_TRAFFIC_DROPS_MASK |
			 MLX4_STATS_PORT_COUNTERS_MASK);

	if (FUNC0(dev))
		*stats_bitmap |= MLX4_STATS_ERROR_COUNTERS_MASK;
}