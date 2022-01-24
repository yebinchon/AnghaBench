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
struct lbs_private {int cur_cmd_retcode; struct cmd_ctrl_node* cur_cmd; } ;
struct cmd_ctrl_node {int result; int cmdwaitqwoken; scalar_t__ callback; int /*<<< orphan*/  cmdwait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,struct cmd_ctrl_node*) ; 
 scalar_t__ lbs_cmd_async_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct lbs_private *priv, struct cmd_ctrl_node *cmd,
			  int result)
{
	if (cmd == priv->cur_cmd)
		priv->cur_cmd_retcode = result;

	cmd->result = result;
	cmd->cmdwaitqwoken = 1;
	FUNC1(&cmd->cmdwait_q);

	if (!cmd->callback || cmd->callback == lbs_cmd_async_callback)
		FUNC0(priv, cmd);
	priv->cur_cmd = NULL;
}