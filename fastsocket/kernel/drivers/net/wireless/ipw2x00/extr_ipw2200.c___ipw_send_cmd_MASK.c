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
typedef  int /*<<< orphan*/  u8 ;
struct ipw_priv {int status; size_t cmdlog_pos; size_t cmdlog_len; TYPE_2__* cmdlog; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_command_queue; } ;
struct host_cmd {scalar_t__ cmd; int /*<<< orphan*/  len; scalar_t__ param; } ;
struct TYPE_3__ {scalar_t__ cmd; int /*<<< orphan*/  param; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int retcode; TYPE_1__ cmd; void* jiffies; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 unsigned long HOST_COMPLETE_TIMEOUT ; 
 scalar_t__ IPW_CMD_WEP_KEY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_DL_HOST_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int STATUS_HCMD_ACTIVE ; 
 int STATUS_RF_KILL_HW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct ipw_priv*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct ipw_priv *priv, struct host_cmd *cmd)
{
	int rc = 0;
	unsigned long flags;
	unsigned long now, end;

	FUNC6(&priv->lock, flags);
	if (priv->status & STATUS_HCMD_ACTIVE) {
		FUNC1("Failed to send %s: Already sending a command.\n",
			  FUNC2(cmd->cmd));
		FUNC7(&priv->lock, flags);
		return -EAGAIN;
	}

	priv->status |= STATUS_HCMD_ACTIVE;

	if (priv->cmdlog) {
		priv->cmdlog[priv->cmdlog_pos].jiffies = jiffies;
		priv->cmdlog[priv->cmdlog_pos].cmd.cmd = cmd->cmd;
		priv->cmdlog[priv->cmdlog_pos].cmd.len = cmd->len;
		FUNC4(priv->cmdlog[priv->cmdlog_pos].cmd.param, cmd->param,
		       cmd->len);
		priv->cmdlog[priv->cmdlog_pos].retcode = -1;
	}

	FUNC0("%s command (#%d) %d bytes: 0x%08X\n",
		     FUNC2(cmd->cmd), cmd->cmd, cmd->len,
		     priv->status);

#ifndef DEBUG_CMD_WEP_KEY
	if (cmd->cmd == IPW_CMD_WEP_KEY)
		FUNC0("WEP_KEY command masked out for secure.\n");
	else
#endif
		FUNC5(IPW_DL_HOST_COMMAND, (u8 *) cmd->param, cmd->len);

	rc = FUNC3(priv, cmd->cmd, cmd->param, cmd->len, 0);
	if (rc) {
		priv->status &= ~STATUS_HCMD_ACTIVE;
		FUNC1("Failed to send %s: Reason %d\n",
			  FUNC2(cmd->cmd), rc);
		FUNC7(&priv->lock, flags);
		goto exit;
	}
	FUNC7(&priv->lock, flags);

	now = jiffies;
	end = now + HOST_COMPLETE_TIMEOUT;
again:
	rc = FUNC9(priv->wait_command_queue,
					      !(priv->
						status & STATUS_HCMD_ACTIVE),
					      end - now);
	if (rc < 0) {
		now = jiffies;
		if (FUNC8(now, end))
			goto again;
		rc = 0;
	}

	if (rc == 0) {
		FUNC6(&priv->lock, flags);
		if (priv->status & STATUS_HCMD_ACTIVE) {
			FUNC1("Failed to send %s: Command timed out.\n",
				  FUNC2(cmd->cmd));
			priv->status &= ~STATUS_HCMD_ACTIVE;
			FUNC7(&priv->lock, flags);
			rc = -EIO;
			goto exit;
		}
		FUNC7(&priv->lock, flags);
	} else
		rc = 0;

	if (priv->status & STATUS_RF_KILL_HW) {
		FUNC1("Failed to send %s: Aborted due to RF kill switch.\n",
			  FUNC2(cmd->cmd));
		rc = -EIO;
		goto exit;
	}

      exit:
	if (priv->cmdlog) {
		priv->cmdlog[priv->cmdlog_pos++].retcode = rc;
		priv->cmdlog_pos %= priv->cmdlog_len;
	}
	return rc;
}