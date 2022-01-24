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
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  mac_bits; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ write; TYPE_2__ read; TYPE_1__ info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_HARDSETUP ; 
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 scalar_t__ CH_STATE_UP ; 
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_LAYER2_MAC_REGISTERED ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct qeth_card *card, int recovery_mode)
{
	int rc = 0;

	FUNC1(SETUP , 2, "stopcard");
	FUNC0(SETUP, 2, &card, sizeof(void *));

	FUNC10(card, 0, 1);
	if (card->read.state == CH_STATE_UP &&
	    card->write.state == CH_STATE_UP &&
	    (card->state == CARD_STATE_UP)) {
		if (recovery_mode &&
		    card->info.type != QETH_CARD_TYPE_OSN) {
			FUNC8(card->dev);
		} else {
			FUNC11();
			FUNC2(card->dev);
			FUNC12();
		}
		card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;
		card->state = CARD_STATE_SOFTSETUP;
	}
	if (card->state == CARD_STATE_SOFTSETUP) {
		FUNC7(card, 0);
		FUNC4(card);
		card->state = CARD_STATE_HARDSETUP;
	}
	if (card->state == CARD_STATE_HARDSETUP) {
		FUNC9(card, 0);
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