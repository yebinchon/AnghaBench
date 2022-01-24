#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bitmap; } ;
struct mlx4_priv {TYPE_1__ mcg_table; } ;
struct TYPE_4__ {scalar_t__ steering_mode; scalar_t__ num_amgms; } ;
struct mlx4_dev {TYPE_2__ caps; } ;

/* Variables and functions */
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);
	int err;

	/* No need for mcg_table when fw managed the mcg table*/
	if (dev->caps.steering_mode ==
	    MLX4_STEERING_MODE_DEVICE_MANAGED)
		return 0;
	err = FUNC0(&priv->mcg_table.bitmap, dev->caps.num_amgms,
			       dev->caps.num_amgms - 1, 0, 0);
	if (err)
		return err;

	FUNC2(&priv->mcg_table.mutex);

	return 0;
}