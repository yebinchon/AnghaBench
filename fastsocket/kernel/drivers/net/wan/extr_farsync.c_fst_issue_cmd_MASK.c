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
struct fst_port_info {size_t index; scalar_t__ start; scalar_t__ txipos; scalar_t__ txpos; struct fst_card_info* card; } ;
struct fst_card_info {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 unsigned short ABORTTX ; 
 int /*<<< orphan*/  DBG_CMD ; 
 unsigned short FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_card_info*,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short NAK ; 
 unsigned short STARTPORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ ** portMailbox ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct fst_port_info *port, unsigned short cmd)
{
	struct fst_card_info *card;
	unsigned short mbval;
	unsigned long flags;
	int safety;

	card = port->card;
	FUNC5(&card->card_lock, flags);
	mbval = FUNC0(card, portMailbox[port->index][0]);

	safety = 0;
	/* Wait for any previous command to complete */
	while (mbval > NAK) {
		FUNC6(&card->card_lock, flags);
		FUNC4(1);
		FUNC5(&card->card_lock, flags);

		if (++safety > 2000) {
			FUNC3("Mailbox safety timeout\n");
			break;
		}

		mbval = FUNC0(card, portMailbox[port->index][0]);
	}
	if (safety > 0) {
		FUNC2(DBG_CMD, "Mailbox clear after %d jiffies\n", safety);
	}
	if (mbval == NAK) {
		FUNC2(DBG_CMD, "issue_cmd: previous command was NAK'd\n");
	}

	FUNC1(card, portMailbox[port->index][0], cmd);

	if (cmd == ABORTTX || cmd == STARTPORT) {
		port->txpos = 0;
		port->txipos = 0;
		port->start = 0;
	}

	FUNC6(&card->card_lock, flags);
}