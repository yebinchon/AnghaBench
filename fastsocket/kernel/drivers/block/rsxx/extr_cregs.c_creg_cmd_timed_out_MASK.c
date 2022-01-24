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
struct TYPE_3__ {int /*<<< orphan*/  creg_timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ active; TYPE_1__ creg_stats; struct creg_cmd* active_cmd; } ;
struct rsxx_cardinfo {TYPE_2__ creg_ctrl; } ;
struct creg_cmd {int /*<<< orphan*/  (* cb ) (struct rsxx_cardinfo*,struct creg_cmd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  creg_cmd_pool ; 
 int /*<<< orphan*/  FUNC1 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct creg_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rsxx_cardinfo*,struct creg_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct rsxx_cardinfo *card = (struct rsxx_cardinfo *) data;
	struct creg_cmd *cmd;

	FUNC4(&card->creg_ctrl.lock);
	cmd = card->creg_ctrl.active_cmd;
	card->creg_ctrl.active_cmd = NULL;
	FUNC5(&card->creg_ctrl.lock);

	if (cmd == NULL) {
		card->creg_ctrl.creg_stats.creg_timeout++;
		FUNC2(FUNC0(card),
			"No active command associated with timeout!\n");
		return;
	}

	if (cmd->cb)
		cmd->cb(card, cmd, -ETIMEDOUT);

	FUNC3(creg_cmd_pool, cmd);


	FUNC4(&card->creg_ctrl.lock);
	card->creg_ctrl.active = 0;
	FUNC1(card);
	FUNC5(&card->creg_ctrl.lock);
}