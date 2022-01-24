#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lcs_card {scalar_t__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 struct lcs_card* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  lcs_attr_group ; 
 int /*<<< orphan*/  FUNC3 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct ccwgroup_device *ccwgdev)
{
	struct lcs_card *card;

	card = FUNC2(&ccwgdev->dev);
	if (!card)
		return;

	FUNC1(3, setup, "remdev");
	FUNC0(3, setup, &card, sizeof(void*));
	if (ccwgdev->state == CCWGROUP_ONLINE) {
		FUNC5(ccwgdev);
	}
	if (card->dev)
		FUNC8(card->dev);
	FUNC7(&ccwgdev->dev.kobj, &lcs_attr_group);
	FUNC3(card);
	FUNC4(card);
	FUNC6(&ccwgdev->dev);
}