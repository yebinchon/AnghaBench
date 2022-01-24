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
 int EINVAL ; 
 int /*<<< orphan*/  RES_CQ ; 
#define  RES_OP_RESERVE_AND_MAP 128 
 int FUNC0 (struct mlx4_dev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev, int slave, int op, int cmd,
			u64 in_param, u64 *out_param)
{
	int cqn;
	int err;

	switch (op) {
	case RES_OP_RESERVE_AND_MAP:
		err = FUNC0(dev, &cqn);
		if (err)
			break;

		err = FUNC2(dev, slave, cqn, 1, RES_CQ, 0);
		if (err) {
			FUNC1(dev, cqn);
			break;
		}

		FUNC3(out_param, cqn);
		break;

	default:
		err = -EINVAL;
	}

	return err;
}