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
 int RES_OP_RESERVE_AND_MAP ; 
 int FUNC0 (struct mlx4_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct mlx4_dev *dev, int slave, int op, int cmd,
			 u64 in_param, u64 *out_param)
{
	int err = -EINVAL;
	int port;
	u64 mac;

	if (op != RES_OP_RESERVE_AND_MAP)
		return err;

	port = FUNC2(out_param);
	mac = in_param;

	err = FUNC0(dev, port, mac);
	if (err >= 0) {
		FUNC4(out_param, err);
		err = 0;
	}

	if (!err) {
		err = FUNC3(dev, slave, mac, port);
		if (err)
			FUNC1(dev, port, mac);
	}
	return err;
}