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
struct TYPE_2__ {scalar_t__ status; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_priv {int /*<<< orphan*/  status; } ;
struct il_host_cmd {scalar_t__ reply_page; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ CAN_ABORT_STATUS ; 
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int /*<<< orphan*/  C_SCAN_ABORT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  S_FW_ERROR ; 
 int /*<<< orphan*/  S_GEO_CONFIGURED ; 
 int /*<<< orphan*/  S_READY ; 
 int /*<<< orphan*/  S_SCAN_HW ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,scalar_t__) ; 
 int FUNC2 (struct il_priv*,struct il_host_cmd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il)
{
	int ret;
	struct il_rx_pkt *pkt;
	struct il_host_cmd cmd = {
		.id = C_SCAN_ABORT,
		.flags = CMD_WANT_SKB,
	};

	/* Exit instantly with error when device is not ready
	 * to receive scan abort command or it does not perform
	 * hardware scan currently */
	if (!FUNC3(S_READY, &il->status) ||
	    !FUNC3(S_GEO_CONFIGURED, &il->status) ||
	    !FUNC3(S_SCAN_HW, &il->status) ||
	    FUNC3(S_FW_ERROR, &il->status) ||
	    FUNC3(S_EXIT_PENDING, &il->status))
		return -EIO;

	ret = FUNC2(il, &cmd);
	if (ret)
		return ret;

	pkt = (struct il_rx_pkt *)cmd.reply_page;
	if (pkt->u.status != CAN_ABORT_STATUS) {
		/* The scan abort will return 1 for success or
		 * 2 for "failure".  A failure condition can be
		 * due to simply not being in an active scan which
		 * can occur if we send the scan abort before we
		 * the microcode has notified us that a scan is
		 * completed. */
		FUNC0("SCAN_ABORT ret %d.\n", pkt->u.status);
		ret = -EIO;
	}

	FUNC1(il, cmd.reply_page);
	return ret;
}