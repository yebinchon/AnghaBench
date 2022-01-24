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
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_CLOSE_HCA ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC1(struct mlx4_dev *dev, int panic)
{
	return FUNC0(dev, 0, 0, panic, MLX4_CMD_CLOSE_HCA, 1000,
			MLX4_CMD_NATIVE);
}