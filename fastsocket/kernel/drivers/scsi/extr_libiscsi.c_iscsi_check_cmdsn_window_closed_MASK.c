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
struct iscsi_session {int /*<<< orphan*/  queued_cmdsn; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  max_cmdsn; int /*<<< orphan*/  exp_cmdsn; } ;
struct iscsi_conn {struct iscsi_session* session; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iscsi_conn *conn)
{
	struct iscsi_session *session = conn->session;

	/*
	 * Check for iSCSI window and take care of CmdSN wrap-around
	 */
	if (!FUNC1(session->queued_cmdsn, session->max_cmdsn)) {
		FUNC0(session, "iSCSI CmdSN closed. ExpCmdSn "
				  "%u MaxCmdSN %u CmdSN %u/%u\n",
				  session->exp_cmdsn, session->max_cmdsn,
				  session->cmdsn, session->queued_cmdsn);
		return -ENOSPC;
	}
	return 0;
}