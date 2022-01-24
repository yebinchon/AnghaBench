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
typedef  int u8 ;
struct mlx4_qp {int dummy; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;

/* Variables and functions */
 int MLX4_PROT_ETH ; 
 int MLX4_UC_STEER ; 
 int FUNC0 (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*) ; 
 int FUNC2 (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ; 

int FUNC3(struct mlx4_dev *dev,
			struct mlx4_qp *qp, u8 gid[16],
			int block_mcast_loopback, enum mlx4_protocol prot)
{
	if (prot == MLX4_PROT_ETH)
		gid[7] |= (MLX4_UC_STEER << 1);

	if (FUNC1(dev))
		return FUNC0(dev, qp, gid, 1,
					block_mcast_loopback, prot);

	return FUNC2(dev, qp, gid, block_mcast_loopback,
					prot, MLX4_UC_STEER);
}