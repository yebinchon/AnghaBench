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
struct lcs_cmd {scalar_t__ initiator; int cmd_code; } ;
struct lcs_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  LCS_CMD_STARTLAN 130 
#define  LCS_CMD_STARTUP 129 
#define  LCS_CMD_STOPLAN 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ LCS_INITIATOR_LGW ; 
 int /*<<< orphan*/  FUNC1 (struct lcs_card*,struct lcs_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC5(struct lcs_card *card, struct lcs_cmd *cmd)
{
	FUNC0(5, trace, "getctrl");
	if (cmd->initiator == LCS_INITIATOR_LGW) {
		switch(cmd->cmd_code) {
		case LCS_CMD_STARTUP:
		case LCS_CMD_STARTLAN:
			FUNC2(card);
			break;
		case LCS_CMD_STOPLAN:
			FUNC4("Stoplan for %s initiated by LGW.\n",
				   card->dev->name);
			if (card->dev)
				FUNC3(card->dev);
			break;
		default:
			FUNC0(5, trace, "noLGWcmd");
			break;
		}
	} else
		FUNC1(card, cmd);
}