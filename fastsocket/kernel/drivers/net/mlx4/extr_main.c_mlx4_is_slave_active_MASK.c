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
struct mlx4_slave_state {int /*<<< orphan*/  active; } ;
struct TYPE_3__ {struct mlx4_slave_state* slave_state; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 

int FUNC2(struct mlx4_dev *dev, int slave)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_slave_state *s_slave;

	if (!FUNC0(dev))
		return 0;

	s_slave = &priv->mfunc.master.slave_state[slave];
	return !!s_slave->active;
}