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
struct qeth_card {TYPE_1__ info; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 struct qeth_card* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC0(&gdev->dev);
	FUNC4(card, 0, 1);
	if ((gdev->state == CCWGROUP_ONLINE) && card->info.hwtrap)
		FUNC2(card, QETH_DIAGS_TRAP_DISARM);
	FUNC3(card, 0);
	FUNC1(card);
}