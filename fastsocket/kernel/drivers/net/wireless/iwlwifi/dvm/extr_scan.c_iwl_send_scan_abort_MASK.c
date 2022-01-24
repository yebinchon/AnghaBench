#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_priv {int /*<<< orphan*/  status; } ;
struct iwl_host_cmd {int flags; TYPE_1__* resp_pkt; int /*<<< orphan*/  id; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ CAN_ABORT_STATUS ; 
 int CMD_SYNC ; 
 int CMD_WANT_SKB ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REPLY_SCAN_ABORT_CMD ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_READY ; 
 int /*<<< orphan*/  STATUS_SCAN_HW ; 
 int FUNC1 (struct iwl_priv*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwl_priv *priv)
{
	int ret;
	struct iwl_host_cmd cmd = {
		.id = REPLY_SCAN_ABORT_CMD,
		.flags = CMD_SYNC | CMD_WANT_SKB,
	};
	__le32 *status;

	/* Exit instantly with error when device is not ready
	 * to receive scan abort command or it does not perform
	 * hardware scan currently */
	if (!FUNC4(STATUS_READY, &priv->status) ||
	    !FUNC4(STATUS_SCAN_HW, &priv->status) ||
	    FUNC4(STATUS_FW_ERROR, &priv->status))
		return -EIO;

	ret = FUNC1(priv, &cmd);
	if (ret)
		return ret;

	status = (void *)cmd.resp_pkt->data;
	if (*status != CAN_ABORT_STATUS) {
		/* The scan abort will return 1 for success or
		 * 2 for "failure".  A failure condition can be
		 * due to simply not being in an active scan which
		 * can occur if we send the scan abort before we
		 * the microcode has notified us that a scan is
		 * completed. */
		FUNC0(priv, "SCAN_ABORT ret %d.\n",
			       FUNC3(*status));
		ret = -EIO;
	}

	FUNC2(&cmd);
	return ret;
}