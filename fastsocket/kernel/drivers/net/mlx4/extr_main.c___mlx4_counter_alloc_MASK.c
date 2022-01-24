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
typedef  int u32 ;
struct mlx4_priv {int /*<<< orphan*/  counters_bitmap; } ;
struct TYPE_2__ {int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int MLX4_DEV_CAP_FLAG_COUNTERS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 

int FUNC2(struct mlx4_dev *dev, u32 *idx)
{
	struct mlx4_priv *priv = FUNC1(dev);

	if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_COUNTERS))
		return -ENOENT;

	*idx = FUNC0(&priv->counters_bitmap);
	if (*idx == -1)
		return -ENOMEM;

	return 0;
}