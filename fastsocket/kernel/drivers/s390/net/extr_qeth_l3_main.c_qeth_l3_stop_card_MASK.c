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
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {scalar_t__ promisc_mode; } ;
struct TYPE_4__ {scalar_t__ sniffer; } ;
struct qeth_card {scalar_t__ state; TYPE_3__ write; TYPE_3__ read; scalar_t__ dev; TYPE_2__ info; TYPE_1__ options; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_HARDSETUP ; 
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 scalar_t__ CH_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRACE_DISABLE ; 
 int /*<<< orphan*/  SETUP ; 
 scalar_t__ SET_PROMISC_MODE_ON ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct qeth_card *card, int recovery_mode)
{
	int rc = 0;

	FUNC1(SETUP, 2, "stopcard");
	FUNC0(SETUP, 2, &card, sizeof(void *));

	FUNC11(card, 0, 1);
	if (card->options.sniffer &&
	    (card->info.promisc_mode == SET_PROMISC_MODE_ON))
		FUNC7(card, QETH_DIAGS_CMD_TRACE_DISABLE);
	if (card->read.state == CH_STATE_UP &&
	    card->write.state == CH_STATE_UP &&
	    (card->state == CARD_STATE_UP)) {
		if (recovery_mode)
			FUNC9(card->dev);
		else {
			if (card->dev) {
				FUNC12();
				FUNC2(card->dev);
				FUNC13();
			}
		}
		card->state = CARD_STATE_SOFTSETUP;
	}
	if (card->state == CARD_STATE_SOFTSETUP) {
		FUNC8(card, 1);
		FUNC4(card);
		card->state = CARD_STATE_HARDSETUP;
	}
	if (card->state == CARD_STATE_HARDSETUP) {
		FUNC10(card, 0);
		FUNC5(card);
		FUNC6(card);
		card->state = CARD_STATE_DOWN;
	}
	if (card->state == CARD_STATE_DOWN) {
		FUNC3(&card->read);
		FUNC3(&card->write);
	}
	return rc;
}