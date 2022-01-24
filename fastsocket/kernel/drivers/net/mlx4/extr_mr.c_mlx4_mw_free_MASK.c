#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx4_mw {scalar_t__ enabled; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int num_mpts; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 scalar_t__ MLX4_MPT_EN_HW ; 
 scalar_t__ MLX4_MPT_EN_SW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int) ; 

void FUNC5(struct mlx4_dev *dev, struct mlx4_mw *mw)
{
	int err;

	if (mw->enabled == MLX4_MPT_EN_HW) {
		err = FUNC1(dev, NULL,
				     FUNC0(mw->key) &
				     (dev->caps.num_mpts - 1));
		if (err)
			FUNC4(dev, "xxx HW2SW_MPT failed (%d)\n", err);

		mw->enabled = MLX4_MPT_EN_SW;
	}
	if (mw->enabled)
		FUNC2(dev, FUNC0(mw->key));
	FUNC3(dev, FUNC0(mw->key));
}