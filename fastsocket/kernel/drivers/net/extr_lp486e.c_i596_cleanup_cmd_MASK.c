#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tx_cmd {int /*<<< orphan*/  pa_tbd; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct i596_tbd {int /*<<< orphan*/  skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  pa_cmd; scalar_t__ command; } ;
struct i596_private {TYPE_3__* cmd_head; TYPE_2__ scb; int /*<<< orphan*/  cmd_backlog; } ;
struct i596_cmd {int command; void* pa_next; } ;
struct TYPE_6__ {int /*<<< orphan*/  pa_next; } ;

/* Variables and functions */
#define  CmdMulticastList 129 
#define  CmdTx 128 
 void* I596_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 struct i596_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev) {
	struct i596_private *lp;
	struct i596_cmd *cmd;

	lp = FUNC4(dev);
	while (lp->cmd_head) {
		cmd = (struct i596_cmd *)lp->cmd_head;

		lp->cmd_head = FUNC6(lp->cmd_head->pa_next);
		lp->cmd_backlog--;

		switch ((cmd->command) & 0x7) {
			case CmdTx: {
				struct tx_cmd *tx_cmd = (struct tx_cmd *) cmd;
				struct i596_tbd * tx_cmd_tbd;
				tx_cmd_tbd = FUNC6(tx_cmd->pa_tbd);

				FUNC1(tx_cmd_tbd->skb);

				dev->stats.tx_errors++;
				dev->stats.tx_aborted_errors++;

				cmd->pa_next = I596_NULL;
				FUNC3((unsigned char *)tx_cmd);
				FUNC5(dev);
				break;
			}
			case CmdMulticastList: {
				// unsigned short count = *((unsigned short *) (ptr + 1));

				cmd->pa_next = I596_NULL;
				FUNC3((unsigned char *)cmd);
				break;
			}
			default: {
				cmd->pa_next = I596_NULL;
				break;
			}
		}
		FUNC0();
	}

	if (lp->scb.command && FUNC2(dev, "i596_cleanup_cmd", 100))
		;

	lp->scb.pa_cmd = FUNC7(lp->cmd_head);
}