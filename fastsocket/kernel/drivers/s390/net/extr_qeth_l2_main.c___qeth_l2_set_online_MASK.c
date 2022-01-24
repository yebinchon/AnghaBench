#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct qeth_rx {int dummy; } ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ hwtrap; } ;
struct qeth_card {int state; int lan_online; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; TYPE_3__* dev; TYPE_2__ info; TYPE_1__* gdev; int /*<<< orphan*/  rx; } ;
struct TYPE_13__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_8__ dev; } ;
typedef  enum qeth_card_states { ____Placeholder_qeth_card_states } qeth_card_states ;
struct TYPE_12__ {int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int CARD_STATE_DOWN ; 
 int CARD_STATE_HARDSETUP ; 
 int CARD_STATE_RECOVER ; 
 int CARD_STATE_SOFTSETUP ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 scalar_t__ QETH_CARD_TYPE_OSD ; 
 scalar_t__ QETH_CARD_TYPE_OSM ; 
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 scalar_t__ QETH_CARD_TYPE_OSX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRAP ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_ARM ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC10 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int FUNC20 (struct qeth_card*) ; 
 scalar_t__ FUNC21 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct qeth_card*) ; 
 scalar_t__ FUNC23 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC25 (struct qeth_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 scalar_t__ FUNC27 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC28 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct qeth_card*) ; 
 int FUNC30 (struct qeth_card*) ; 
 int FUNC31 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct qeth_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 

__attribute__((used)) static int FUNC35(struct ccwgroup_device *gdev, int recovery_mode)
{
	struct qeth_card *card = FUNC10(&gdev->dev);
	int rc = 0;
	enum qeth_card_states recover_flag;

	FUNC0(!card);
	FUNC15(&card->discipline_mutex);
	FUNC15(&card->conf_mutex);
	FUNC5(SETUP, 2, "setonlin");
	FUNC4(SETUP, 2, &card, sizeof(void *));

	recover_flag = card->state;
	rc = FUNC9(FUNC2(card));
	if (rc) {
		FUNC6(SETUP, 2, "1err%d", rc);
		rc = -EIO;
		goto out;
	}
	rc = FUNC9(FUNC3(card));
	if (rc) {
		FUNC6(SETUP, 2, "1err%d", rc);
		rc = -EIO;
		goto out;
	}
	rc = FUNC9(FUNC1(card));
	if (rc) {
		FUNC6(SETUP, 2, "1err%d", rc);
		rc = -EIO;
		goto out;
	}

	rc = FUNC20(card);
	if (rc) {
		FUNC6(SETUP, 2, "2err%d", rc);
		goto out_remove;
	}

	if (!card->dev && FUNC27(card))
		goto out_remove;

	if (card->info.type != QETH_CARD_TYPE_OSN)
		FUNC25(card, &card->dev->dev_addr[0]);

	if (FUNC23(card, QETH_DIAGS_CMD_TRAP)) {
		if (card->info.hwtrap &&
		    FUNC21(card, QETH_DIAGS_TRAP_ARM))
			card->info.hwtrap = 0;
	} else
		card->info.hwtrap = 0;

	card->state = CARD_STATE_HARDSETUP;
	FUNC14(&card->rx, 0, sizeof(struct qeth_rx));
	FUNC29(card);

	/* softsetup */
	FUNC5(SETUP, 2, "softsetp");

	rc = FUNC30(card);
	if (rc) {
		FUNC6(SETUP, 2, "1err%d", rc);
		if (rc == 0xe080) {
			FUNC12(&card->gdev->dev,
				"The LAN is offline\n");
			card->lan_online = 0;
			goto contin;
		}
		rc = -ENODEV;
		goto out_remove;
	} else
		card->lan_online = 1;

contin:
	if ((card->info.type == QETH_CARD_TYPE_OSD) ||
	    (card->info.type == QETH_CARD_TYPE_OSX)) {
		/* configure isolation level */
		rc = FUNC31(card, 0);
		if (rc) {
			rc = -ENODEV;
			goto out_remove;
		}
	}

	if (card->info.type != QETH_CARD_TYPE_OSN &&
	    card->info.type != QETH_CARD_TYPE_OSM)
		FUNC24(card);

	FUNC19(card->dev);

	rc = FUNC22(card);
	if (rc) {
		FUNC6(SETUP, 2, "6err%d", rc);
		goto out_remove;
	}
	card->state = CARD_STATE_SOFTSETUP;
	if (card->lan_online)
		FUNC18(card->dev);
	else
		FUNC17(card->dev);

	FUNC32(card, 0xffffffff, 0);
	if (recover_flag == CARD_STATE_RECOVER) {
		if (recovery_mode &&
		    card->info.type != QETH_CARD_TYPE_OSN) {
			FUNC7(card->dev);
		} else {
			FUNC33();
			FUNC11(card->dev);
			FUNC34();
		}
		/* this also sets saved unicast addresses */
		FUNC26(card->dev);
	}
	/* let user_space know that device is online */
	FUNC13(&gdev->dev.kobj, KOBJ_CHANGE);
out:
	FUNC16(&card->conf_mutex);
	FUNC16(&card->discipline_mutex);
	return rc;
out_remove:
	FUNC28(card, 0);
	FUNC8(FUNC1(card));
	FUNC8(FUNC3(card));
	FUNC8(FUNC2(card));
	if (recover_flag == CARD_STATE_RECOVER)
		card->state = CARD_STATE_RECOVER;
	else
		card->state = CARD_STATE_DOWN;
	FUNC16(&card->conf_mutex);
	FUNC16(&card->discipline_mutex);
	return -ENODEV;
}