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
struct qeth_card {scalar_t__ state; TYPE_1__* gdev; scalar_t__ dev; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_RECOVER ; 
 scalar_t__ CCWGROUP_OFFLINE ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct qeth_card* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC2(&gdev->dev);
	int rc = 0;

	if (gdev->state == CCWGROUP_OFFLINE)
		goto out;

	if (card->state == CARD_STATE_RECOVER) {
		rc = FUNC0(card->gdev, 1);
		if (rc) {
			if (card->dev) {
				FUNC6();
				FUNC1(card->dev);
				FUNC7();
			}
		}
	} else
		rc = FUNC0(card->gdev, 0);
out:
	FUNC5(card, 0xffffffff, 0);
	if (card->dev)
		FUNC4(card->dev);
	if (rc)
		FUNC3(&card->gdev->dev, "The qeth device driver "
			"failed to recover an error on the device\n");
	return rc;
}