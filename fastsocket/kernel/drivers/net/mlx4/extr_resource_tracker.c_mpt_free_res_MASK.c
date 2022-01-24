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
struct res_mpt {int key; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_MPT ; 
 int /*<<< orphan*/  RES_MPT_RESERVED ; 
#define  RES_OP_MAP_ICM 129 
#define  RES_OP_RESERVE 128 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct mlx4_dev *dev, int slave, int op, int cmd,
			u64 in_param)
{
	int err = -EINVAL;
	int index;
	int id;
	struct res_mpt *mpt;

	switch (op) {
	case RES_OP_RESERVE:
		index = FUNC2(&in_param);
		id = index & FUNC4(dev);
		err = FUNC3(dev, slave, id, RES_MPT, &mpt);
		if (err)
			break;
		index = mpt->key;
		FUNC6(dev, slave, id, RES_MPT);

		err = FUNC7(dev, slave, id, 1, RES_MPT, 0);
		if (err)
			break;
		FUNC1(dev, index);
		break;
	case RES_OP_MAP_ICM:
			index = FUNC2(&in_param);
			id = index & FUNC4(dev);
			err = FUNC5(dev, slave, id,
						   RES_MPT_RESERVED, &mpt);
			if (err)
				return err;

			FUNC0(dev, mpt->key);
			FUNC8(dev, slave, RES_MPT, id);
			return err;
		break;
	default:
		err = -EINVAL;
		break;
	}
	return err;
}