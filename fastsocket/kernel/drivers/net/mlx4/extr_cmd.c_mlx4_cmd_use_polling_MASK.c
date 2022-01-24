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
struct TYPE_2__ {int max_cmds; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  context; int /*<<< orphan*/  event_sem; scalar_t__ use_events; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC2(dev);
	int i;

	priv->cmd.use_events = 0;

	for (i = 0; i < priv->cmd.max_cmds; ++i)
		FUNC0(&priv->cmd.event_sem);

	FUNC1(priv->cmd.context);

	FUNC3(&priv->cmd.poll_sem);
}