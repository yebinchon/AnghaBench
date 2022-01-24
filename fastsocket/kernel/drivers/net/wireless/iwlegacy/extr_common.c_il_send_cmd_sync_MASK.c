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
struct il_priv {size_t cmd_queue; TYPE_2__* txq; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  mutex; } ;
struct il_host_cmd {int flags; int callback; scalar_t__ reply_page; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__* meta; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CMD_ASYNC ; 
 int CMD_WANT_SKB ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ECANCELED ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HOST_COMPLETE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  S_FW_ERROR ; 
 int /*<<< orphan*/  S_HCMD_ACTIVE ; 
 int /*<<< orphan*/  S_RFKILL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct il_priv*,struct il_host_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC12(struct il_priv *il, struct il_host_cmd *cmd)
{
	int cmd_idx;
	int ret;

	FUNC8(&il->mutex);

	FUNC0(cmd->flags & CMD_ASYNC);

	/* A synchronous command can not have a callback set. */
	FUNC0(cmd->callback);

	FUNC1("Attempting to send sync command %s\n",
	       FUNC6(cmd->id));

	FUNC9(S_HCMD_ACTIVE, &il->status);
	FUNC1("Setting HCMD_ACTIVE for command %s\n",
	       FUNC6(cmd->id));

	cmd_idx = FUNC4(il, cmd);
	if (cmd_idx < 0) {
		ret = cmd_idx;
		FUNC2("Error sending %s: enqueue_hcmd failed: %d\n",
		       FUNC6(cmd->id), ret);
		goto out;
	}

	ret = FUNC11(il->wait_command_queue,
				 !FUNC10(S_HCMD_ACTIVE, &il->status),
				 HOST_COMPLETE_TIMEOUT);
	if (!ret) {
		if (FUNC10(S_HCMD_ACTIVE, &il->status)) {
			FUNC2("Error sending %s: time out after %dms.\n",
			       FUNC6(cmd->id),
			       FUNC7(HOST_COMPLETE_TIMEOUT));

			FUNC3(S_HCMD_ACTIVE, &il->status);
			FUNC1("Clearing HCMD_ACTIVE for command %s\n",
			       FUNC6(cmd->id));
			ret = -ETIMEDOUT;
			goto cancel;
		}
	}

	if (FUNC10(S_RFKILL, &il->status)) {
		FUNC2("Command %s aborted: RF KILL Switch\n",
		       FUNC6(cmd->id));
		ret = -ECANCELED;
		goto fail;
	}
	if (FUNC10(S_FW_ERROR, &il->status)) {
		FUNC2("Command %s failed: FW Error\n",
		       FUNC6(cmd->id));
		ret = -EIO;
		goto fail;
	}
	if ((cmd->flags & CMD_WANT_SKB) && !cmd->reply_page) {
		FUNC2("Error: Response NULL in '%s'\n",
		       FUNC6(cmd->id));
		ret = -EIO;
		goto cancel;
	}

	ret = 0;
	goto out;

cancel:
	if (cmd->flags & CMD_WANT_SKB) {
		/*
		 * Cancel the CMD_WANT_SKB flag for the cmd in the
		 * TX cmd queue. Otherwise in case the cmd comes
		 * in later, it will possibly set an invalid
		 * address (cmd->meta.source).
		 */
		il->txq[il->cmd_queue].meta[cmd_idx].flags &= ~CMD_WANT_SKB;
	}
fail:
	if (cmd->reply_page) {
		FUNC5(il, cmd->reply_page);
		cmd->reply_page = 0;
	}
out:
	return ret;
}