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
typedef  int /*<<< orphan*/  uint16_t ;
struct lbtf_private {int /*<<< orphan*/  driver_lock; } ;
struct cmd_header {int dummy; } ;
struct cmd_ctrl_node {int result; int /*<<< orphan*/  cmdwaitqwoken; int /*<<< orphan*/  cmdwait_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  LBTF_DEB_HOST ; 
 int FUNC1 (struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbtf_private*,struct cmd_ctrl_node*) ; 
 struct cmd_ctrl_node* FUNC3 (struct lbtf_private*,int /*<<< orphan*/ ,struct cmd_header*,int,int (*) (struct lbtf_private*,unsigned long,struct cmd_header*),unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct lbtf_private *priv, uint16_t command,
	      struct cmd_header *in_cmd, int in_cmd_size,
	      int (*callback)(struct lbtf_private *,
			      unsigned long, struct cmd_header *),
	      unsigned long callback_arg)
{
	struct cmd_ctrl_node *cmdnode;
	unsigned long flags;
	int ret = 0;

	FUNC4(LBTF_DEB_HOST);

	cmdnode = FUNC3(priv, command, in_cmd, in_cmd_size,
				  callback, callback_arg);
	if (FUNC0(cmdnode)) {
		ret = FUNC1(cmdnode);
		goto done;
	}

	FUNC6();
	ret = FUNC10(cmdnode->cmdwait_q,
				       cmdnode->cmdwaitqwoken);
	if (ret) {
		FUNC7("PREP_CMD: command 0x%04x interrupted by signal: %d\n",
			    command, ret);
		goto done;
	}

	FUNC8(&priv->driver_lock, flags);
	ret = cmdnode->result;
	if (ret)
		FUNC7("PREP_CMD: command 0x%04x failed: %d\n",
			    command, ret);

	FUNC2(priv, cmdnode);
	FUNC9(&priv->driver_lock, flags);

done:
	FUNC5(LBTF_DEB_HOST, "ret %d", ret);
	return ret;
}