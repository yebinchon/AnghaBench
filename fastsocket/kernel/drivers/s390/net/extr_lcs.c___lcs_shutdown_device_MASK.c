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
struct TYPE_4__ {int /*<<< orphan*/  ccwdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ccwdev; } ;
struct lcs_card {int state; TYPE_2__ write; TYPE_1__ read; int /*<<< orphan*/  dev; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
typedef  enum lcs_dev_states { ____Placeholder_lcs_dev_states } lcs_dev_states ;

/* Variables and functions */
 int DEV_STATE_RECOVER ; 
 int DEV_STATE_UP ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  LCS_SET_MC_THREAD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct lcs_card* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static int
FUNC8(struct ccwgroup_device *ccwgdev, int recovery_mode)
{
	struct lcs_card *card;
	enum lcs_dev_states recover_state;
	int ret = 0, ret2 = 0, ret3 = 0;

	FUNC1(3, setup, "shtdndev");
	card = FUNC4(&ccwgdev->dev);
	if (!card)
		return -ENODEV;
	if (recovery_mode == 0) {
		FUNC5(card, 0);
		if (FUNC7(card, LCS_SET_MC_THREAD))
			return -ERESTARTSYS;
	}
	FUNC0(3, setup, &card, sizeof(void*));
	recover_state = card->state;

	ret = FUNC6(card->dev);
	ret2 = FUNC3(card->read.ccwdev);
	ret3 = FUNC3(card->write.ccwdev);
	if (!ret)
		ret = (ret2) ? ret2 : ret3;
	if (ret)
		FUNC2(3, setup, "1err:%d", ret);
	if (recover_state == DEV_STATE_UP) {
		card->state = DEV_STATE_RECOVER;
	}
	return 0;
}