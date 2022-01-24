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
typedef  int /*<<< orphan*/  u8 ;
struct lbs_private {int seqnum; int (* hw_host_to_card ) (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;
struct cmd_header {scalar_t__ result; void* seqnum; void* size; void* command; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int CMD_802_11_WAKEUP_CONFIRM ; 
 int /*<<< orphan*/  LBS_DEB_HOST ; 
 int /*<<< orphan*/  MVMS_CMD ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct lbs_private *priv)
{
	struct cmd_header cmd;
	int ret = 0;

	FUNC1(LBS_DEB_HOST);

	cmd.command = FUNC0(CMD_802_11_WAKEUP_CONFIRM);
	cmd.size = FUNC0(sizeof(cmd));
	cmd.seqnum = FUNC0(++priv->seqnum);
	cmd.result = 0;

	FUNC2(LBS_DEB_HOST, "wake confirm", (u8 *) &cmd,
		sizeof(cmd));

	ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) &cmd, sizeof(cmd));
	if (ret)
		FUNC4("SEND_WAKEC_CMD: Host to Card failed for Confirm Wake\n");

	FUNC3(LBS_DEB_HOST, "ret %d", ret);
	return ret;
}