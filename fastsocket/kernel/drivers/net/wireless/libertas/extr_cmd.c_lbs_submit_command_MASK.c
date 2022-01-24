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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct lbs_private {int (* hw_host_to_card ) (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;int /*<<< orphan*/  command_timer; int /*<<< orphan*/  driver_lock; scalar_t__ cur_cmd_retcode; struct cmd_ctrl_node* cur_cmd; } ;
struct cmd_header {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  command; int /*<<< orphan*/  size; } ;
struct cmd_ctrl_node {struct cmd_header* cmdbuf; } ;

/* Variables and functions */
 scalar_t__ CMD_802_11_ASSOCIATE ; 
 scalar_t__ CMD_802_11_SCAN ; 
 int HZ ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 int /*<<< orphan*/  LBS_DEB_HOST ; 
 int /*<<< orphan*/  MVMS_CMD ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct lbs_private *priv,
			       struct cmd_ctrl_node *cmdnode)
{
	unsigned long flags;
	struct cmd_header *cmd;
	uint16_t cmdsize;
	uint16_t command;
	int timeo = 3 * HZ;
	int ret;

	FUNC1(LBS_DEB_HOST);

	cmd = cmdnode->cmdbuf;

	FUNC7(&priv->driver_lock, flags);
	priv->cur_cmd = cmdnode;
	priv->cur_cmd_retcode = 0;
	FUNC8(&priv->driver_lock, flags);

	cmdsize = FUNC5(cmd->size);
	command = FUNC5(cmd->command);

	/* These commands take longer */
	if (command == CMD_802_11_SCAN || command == CMD_802_11_ASSOCIATE)
		timeo = 5 * HZ;

	FUNC0("DNLD_CMD: command 0x%04x, seq %d, size %d\n",
		     command, FUNC5(cmd->seqnum), cmdsize);
	FUNC2(LBS_DEB_CMD, "DNLD_CMD", (void *) cmdnode->cmdbuf, cmdsize);

	ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) cmd, cmdsize);

	if (ret) {
		FUNC4("DNLD_CMD: hw_host_to_card failed: %d\n", ret);
		/* Let the timer kick in and retry, and potentially reset
		   the whole thing if the condition persists */
		timeo = HZ/4;
	}

	/* Setup the timer after transmit command */
	FUNC6(&priv->command_timer, jiffies + timeo);

	FUNC3(LBS_DEB_HOST);
}