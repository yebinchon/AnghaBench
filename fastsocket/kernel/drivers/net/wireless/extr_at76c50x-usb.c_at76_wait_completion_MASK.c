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
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 unsigned long CMD_COMPLETION_TIMEOUT ; 
 int CMD_STATUS_IDLE ; 
 int CMD_STATUS_IN_PROGRESS ; 
 int /*<<< orphan*/  DBG_WAIT_COMPLETE ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct at76_priv *priv, int cmd)
{
	int status = 0;
	unsigned long timeout = jiffies + CMD_COMPLETION_TIMEOUT;

	do {
		status = FUNC1(priv->udev, cmd);
		if (status < 0) {
			FUNC5(priv->hw->wiphy,
				  "at76_get_cmd_status failed: %d\n",
				  status);
			break;
		}

		FUNC0(DBG_WAIT_COMPLETE,
			 "%s: Waiting on cmd %d, status = %d (%s)",
			 FUNC6(priv->hw->wiphy), cmd, status,
			 FUNC2(status));

		if (status != CMD_STATUS_IN_PROGRESS
		    && status != CMD_STATUS_IDLE)
			break;

		FUNC3(HZ / 10);	/* 100 ms */
		if (FUNC4(jiffies, timeout)) {
			FUNC5(priv->hw->wiphy,
				  "completion timeout for command %d\n", cmd);
			status = -ETIMEDOUT;
			break;
		}
	} while (1);

	return status;
}