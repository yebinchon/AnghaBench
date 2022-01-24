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
typedef  int /*<<< orphan*/  u8 ;
struct lbtf_private {int (* hw_host_to_card ) (struct lbtf_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  command_timer; int /*<<< orphan*/  driver_lock; struct cmd_ctrl_node* cur_cmd; } ;
struct cmd_header {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  command; int /*<<< orphan*/  size; } ;
struct cmd_ctrl_node {struct cmd_header* cmdbuf; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 int /*<<< orphan*/  LBTF_DEB_HOST ; 
 int /*<<< orphan*/  MVMS_CMD ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct lbtf_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct lbtf_private *priv,
			       struct cmd_ctrl_node *cmdnode)
{
	unsigned long flags;
	struct cmd_header *cmd;
	uint16_t cmdsize;
	uint16_t command;
	int timeo = 5 * HZ;
	int ret;

	FUNC1(LBTF_DEB_HOST);

	cmd = cmdnode->cmdbuf;

	FUNC7(&priv->driver_lock, flags);
	priv->cur_cmd = cmdnode;
	cmdsize = FUNC4(cmd->size);
	command = FUNC4(cmd->command);

	FUNC0("DNLD_CMD: command 0x%04x, seq %d, size %d\n",
		     command, FUNC4(cmd->seqnum), cmdsize);
	FUNC2(LBTF_DEB_CMD, "DNLD_CMD", (void *) cmdnode->cmdbuf, cmdsize);

	ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) cmd, cmdsize);
	FUNC8(&priv->driver_lock, flags);

	if (ret) {
		FUNC6("DNLD_CMD: hw_host_to_card failed: %d\n", ret);
		/* Let the timer kick in and retry, and potentially reset
		   the whole thing if the condition persists */
		timeo = HZ;
	}

	/* Setup the timer after transmit command */
	FUNC5(&priv->command_timer, jiffies + timeo);

	FUNC3(LBTF_DEB_HOST);
}