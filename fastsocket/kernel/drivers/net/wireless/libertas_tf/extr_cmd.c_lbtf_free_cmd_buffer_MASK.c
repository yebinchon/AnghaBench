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
struct lbtf_private {struct cmd_ctrl_node* cmd_array; } ;
struct cmd_ctrl_node {struct cmd_ctrl_node* cmdbuf; } ;

/* Variables and functions */
 unsigned int LBS_NUM_CMD_BUFFERS ; 
 int /*<<< orphan*/  LBTF_DEB_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct lbtf_private *priv)
{
	struct cmd_ctrl_node *cmdarray;
	unsigned int i;

	FUNC1(LBTF_DEB_HOST);

	/* need to check if cmd array is allocated or not */
	if (priv->cmd_array == NULL) {
		FUNC2("FREE_CMD_BUF: cmd_array is NULL\n");
		goto done;
	}

	cmdarray = priv->cmd_array;

	/* Release shared memory buffers */
	for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
		FUNC0(cmdarray[i].cmdbuf);
		cmdarray[i].cmdbuf = NULL;
	}

	/* Release cmd_ctrl_node */
	FUNC0(priv->cmd_array);
	priv->cmd_array = NULL;

done:
	FUNC3(LBTF_DEB_HOST);
	return 0;
}