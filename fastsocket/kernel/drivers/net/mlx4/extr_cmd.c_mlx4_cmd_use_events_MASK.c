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
struct TYPE_3__ {int max_cmds; int token_mask; int use_events; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  context_lock; int /*<<< orphan*/  event_sem; scalar_t__ free_head; TYPE_2__* context; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {int dummy; } ;
struct TYPE_4__ {int token; int next; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC2(dev);
	int i;
	int err = 0;

	priv->cmd.context = FUNC1(priv->cmd.max_cmds *
				   sizeof (struct mlx4_cmd_context),
				   GFP_KERNEL);
	if (!priv->cmd.context)
		return -ENOMEM;

	for (i = 0; i < priv->cmd.max_cmds; ++i) {
		priv->cmd.context[i].token = i;
		priv->cmd.context[i].next  = i + 1;
	}

	priv->cmd.context[priv->cmd.max_cmds - 1].next = -1;
	priv->cmd.free_head = 0;

	FUNC3(&priv->cmd.event_sem, priv->cmd.max_cmds);
	FUNC4(&priv->cmd.context_lock);

	for (priv->cmd.token_mask = 1;
	     priv->cmd.token_mask < priv->cmd.max_cmds;
	     priv->cmd.token_mask <<= 1)
		; /* nothing */
	--priv->cmd.token_mask;

	FUNC0(&priv->cmd.poll_sem);
	priv->cmd.use_events = 1;

	return err;
}