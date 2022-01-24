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
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_ALLOC_RES ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  RES_OP_RESERVE ; 
 int /*<<< orphan*/  RES_QP ; 
 int FUNC0 (struct mlx4_dev*,int,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(struct mlx4_dev *dev, int cnt, int align, int *base)
{
	u64 in_param = 0;
	u64 out_param;
	int err;

	if (FUNC3(dev)) {
		FUNC5(&in_param, cnt);
		FUNC4(&in_param, align);
		err = FUNC2(dev, in_param, &out_param,
				   RES_QP, RES_OP_RESERVE,
				   MLX4_CMD_ALLOC_RES,
				   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
		if (err)
			return err;

		*base = FUNC1(&out_param);
		return 0;
	}
	return FUNC0(dev, cnt, align, base);
}