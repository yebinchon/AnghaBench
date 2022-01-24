#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* ccwgdriver; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct qeth_card {int /*<<< orphan*/  list; TYPE_3__ discipline; TYPE_1__ info; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  rwlock; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* remove ) (struct ccwgroup_device*) ;} ;

/* Variables and functions */
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 struct qeth_card* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__ qeth_core_card_list ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct ccwgroup_device *gdev)
{
	unsigned long flags;
	struct qeth_card *card = FUNC1(&gdev->dev);

	FUNC0(SETUP, 2, "removedv");

	if (card->info.type == QETH_CARD_TYPE_OSN) {
		FUNC8(&gdev->dev);
	} else {
		FUNC7(&gdev->dev);
	}

	if (card->discipline.ccwgdriver) {
		card->discipline.ccwgdriver->remove(gdev);
		FUNC6(card);
	}

	FUNC10(&qeth_core_card_list.rwlock, flags);
	FUNC3(&card->list);
	FUNC11(&qeth_core_card_list.rwlock, flags);
	FUNC5(card);
	FUNC2(&gdev->dev, NULL);
	FUNC4(&gdev->dev);
	return;
}