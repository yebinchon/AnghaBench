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
#define  RES_OP_MAP_ICM 129 
#define  RES_OP_RESERVE 128 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  RES_QP_MAPPED ; 
 int FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,int) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int*) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,int,int) ; 

__attribute__((used)) static int FUNC12(struct mlx4_dev *dev, int slave, int op, int cmd,
			u64 in_param, u64 *out_param)
{
	int err;
	int count;
	int align;
	int base;
	int qpn;

	switch (op) {
	case RES_OP_RESERVE:
		count = FUNC6(&in_param);
		align = FUNC5(&in_param);
		err = FUNC2(dev, count, align, &base);
		if (err)
			return err;

		err = FUNC3(dev, slave, base, count, RES_QP, 0);
		if (err) {
			FUNC1(dev, base, count);
			return err;
		}
		FUNC10(out_param, base);
		break;
	case RES_OP_MAP_ICM:
		qpn = FUNC6(&in_param) & 0x7fffff;
		if (FUNC11(dev, slave, qpn)) {
			err = FUNC3(dev, slave, qpn, 1, RES_QP, 0);
			if (err)
				return err;
		}

		err = FUNC7(dev, slave, qpn, RES_QP_MAPPED,
					   NULL, 1);
		if (err)
			return err;

		if (!FUNC4(dev, qpn)) {
			err = FUNC0(dev, qpn);
			if (err) {
				FUNC8(dev, slave, RES_QP, qpn);
				return err;
			}
		}

		FUNC9(dev, slave, RES_QP, qpn);
		break;

	default:
		err = -EINVAL;
		break;
	}
	return err;
}