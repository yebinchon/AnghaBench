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
struct TYPE_2__ {scalar_t__ hwtrap; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  gdev; TYPE_1__ info; int /*<<< orphan*/  wait_q; scalar_t__ dev; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_UP ; 
 scalar_t__ CCWGROUP_OFFLINE ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct qeth_card* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC1(&gdev->dev);

	if (card->dev)
		FUNC2(card->dev);
	FUNC4(card, 0, 1);
	FUNC6(card->wait_q, FUNC5(card, 0xffffffff) == 0);
	if (gdev->state == CCWGROUP_OFFLINE)
		return 0;
	if (card->state == CARD_STATE_UP) {
		if (card->info.hwtrap)
			FUNC3(card, QETH_DIAGS_TRAP_DISARM);
		FUNC0(card->gdev, 1);
	} else
		FUNC0(card->gdev, 0);
	return 0;
}