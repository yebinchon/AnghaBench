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
struct qeth_card {int /*<<< orphan*/ * dev; int /*<<< orphan*/  wait_q; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 struct qeth_card* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ccwgroup_device *cgdev)
{
	struct qeth_card *card = FUNC0(&cgdev->dev);

	FUNC2(card, 0, 1);
	FUNC5(card->wait_q, FUNC3(card, 0xffffffff) == 0);

	if (cgdev->state == CCWGROUP_ONLINE)
		FUNC1(cgdev);

	if (card->dev) {
		FUNC4(card->dev);
		card->dev = NULL;
	}
	return;
}