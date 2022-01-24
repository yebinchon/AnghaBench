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
struct TYPE_3__ {int hwtrap; } ;
struct qeth_card {int state; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; TYPE_1__ info; scalar_t__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_2__ dev; } ;
typedef  enum qeth_card_states { ____Placeholder_qeth_card_states } qeth_card_states ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int CARD_STATE_RECOVER ; 
 int CARD_STATE_UP ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 int /*<<< orphan*/  SETUP ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_card*,int) ; 

__attribute__((used)) static int FUNC15(struct ccwgroup_device *cgdev,
					int recovery_mode)
{
	struct qeth_card *card = FUNC7(&cgdev->dev);
	int rc = 0, rc2 = 0, rc3 = 0;
	enum qeth_card_states recover_flag;

	FUNC9(&card->discipline_mutex);
	FUNC9(&card->conf_mutex);
	FUNC4(SETUP, 3, "setoffl");
	FUNC3(SETUP, 3, &card, sizeof(void *));

	if (card->dev && FUNC12(card->dev))
		FUNC11(card->dev);
	recover_flag = card->state;
	if ((!recovery_mode && card->info.hwtrap) || card->info.hwtrap == 2) {
		FUNC13(card, QETH_DIAGS_TRAP_DISARM);
		card->info.hwtrap = 1;
	}
	FUNC14(card, recovery_mode);
	rc  = FUNC6(FUNC0(card));
	rc2 = FUNC6(FUNC2(card));
	rc3 = FUNC6(FUNC1(card));
	if (!rc)
		rc = (rc2) ? rc2 : rc3;
	if (rc)
		FUNC5(SETUP, 2, "1err%d", rc);
	if (recover_flag == CARD_STATE_UP)
		card->state = CARD_STATE_RECOVER;
	/* let user_space know that device is offline */
	FUNC8(&cgdev->dev.kobj, KOBJ_CHANGE);
	FUNC10(&card->conf_mutex);
	FUNC10(&card->discipline_mutex);
	return 0;
}