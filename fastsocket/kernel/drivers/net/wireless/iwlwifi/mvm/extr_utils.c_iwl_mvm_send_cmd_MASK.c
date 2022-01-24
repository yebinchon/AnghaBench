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
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;
struct iwl_host_cmd {int flags; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_WANT_SKB ; 
 int ERFKILL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct iwl_mvm *mvm, struct iwl_host_cmd *cmd)
{
	int ret;

	/*
	 * Synchronous commands from this op-mode must hold
	 * the mutex, this ensures we don't try to send two
	 * (or more) synchronous commands at a time.
	 */
	if (!(cmd->flags & CMD_ASYNC))
		FUNC1(&mvm->mutex);

	ret = FUNC0(mvm->trans, cmd);

	/*
	 * If the caller wants the SKB, then don't hide any problems, the
	 * caller might access the response buffer which will be NULL if
	 * the command failed.
	 */
	if (cmd->flags & CMD_WANT_SKB)
		return ret;

	/* Silently ignore failures if RFKILL is asserted */
	if (!ret || ret == -ERFKILL)
		return 0;
	return ret;
}