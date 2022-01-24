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
struct TYPE_5__ {scalar_t__ cq; } ;
struct TYPE_4__ {int hwtrap; } ;
struct qeth_card {int state; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; scalar_t__ dev; TYPE_2__ options; TYPE_1__ info; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_3__ dev; } ;
typedef  enum qeth_card_states { ____Placeholder_qeth_card_states } qeth_card_states ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int CARD_STATE_RECOVER ; 
 int CARD_STATE_UP ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  NETDEV_REBOOT ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct ccwgroup_device *cgdev,
			int recovery_mode)
{
	struct qeth_card *card = FUNC8(&cgdev->dev);
	int rc = 0, rc2 = 0, rc3 = 0;
	enum qeth_card_states recover_flag;

	FUNC10(&card->discipline_mutex);
	FUNC10(&card->conf_mutex);
	FUNC4(SETUP, 3, "setoffl");
	FUNC3(SETUP, 3, &card, sizeof(void *));

	if (card->dev && FUNC13(card->dev))
		FUNC12(card->dev);
	recover_flag = card->state;
	if ((!recovery_mode && card->info.hwtrap) || card->info.hwtrap == 2) {
		FUNC14(card, QETH_DIAGS_TRAP_DISARM);
		card->info.hwtrap = 1;
	}
	FUNC15(card, recovery_mode);
	if ((card->options.cq == QETH_CQ_ENABLED) && card->dev) {
		FUNC16();
		FUNC6(NETDEV_REBOOT, card->dev);
		FUNC17();
	}
	rc  = FUNC7(FUNC0(card));
	rc2 = FUNC7(FUNC2(card));
	rc3 = FUNC7(FUNC1(card));
	if (!rc)
		rc = (rc2) ? rc2 : rc3;
	if (rc)
		FUNC5(SETUP, 2, "1err%d", rc);
	if (recover_flag == CARD_STATE_UP)
		card->state = CARD_STATE_RECOVER;
	/* let user_space know that device is offline */
	FUNC9(&cgdev->dev.kobj, KOBJ_CHANGE);
	FUNC11(&card->conf_mutex);
	FUNC11(&card->discipline_mutex);
	return 0;
}