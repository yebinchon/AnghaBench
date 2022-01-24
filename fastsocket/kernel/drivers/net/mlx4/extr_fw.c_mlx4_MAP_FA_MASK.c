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
struct mlx4_icm {int dummy; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_MAP_FA ; 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,struct mlx4_icm*,int) ; 

int FUNC1(struct mlx4_dev *dev, struct mlx4_icm *icm)
{
	return FUNC0(dev, MLX4_CMD_MAP_FA, icm, -1);
}