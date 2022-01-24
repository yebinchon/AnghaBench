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
struct rsxx_cardinfo {scalar_t__ regmap; int /*<<< orphan*/  eeh_state; } ;
struct creg_cmd {scalar_t__ addr; scalar_t__ cnt8; scalar_t__ op; int /*<<< orphan*/  stream; scalar_t__ buf; } ;

/* Variables and functions */
 scalar_t__ CREG_ADD ; 
 scalar_t__ CREG_CMD ; 
 scalar_t__ CREG_CNT ; 
 scalar_t__ CREG_OP_WRITE ; 
 int FUNC0 (struct rsxx_cardinfo*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rsxx_cardinfo *card, struct creg_cmd *cmd)
{
	int st;

	if (FUNC2(card->eeh_state))
		return;

	FUNC1(cmd->addr, card->regmap + CREG_ADD);
	FUNC1(cmd->cnt8, card->regmap + CREG_CNT);

	if (cmd->op == CREG_OP_WRITE) {
		if (cmd->buf) {
			st = FUNC0(card, cmd->cnt8,
					       cmd->buf, cmd->stream);
			if (st)
				return;
		}
	}

	if (FUNC2(card->eeh_state))
		return;

	/* Setting the valid bit will kick off the command. */
	FUNC1(cmd->op, card->regmap + CREG_CMD);
}