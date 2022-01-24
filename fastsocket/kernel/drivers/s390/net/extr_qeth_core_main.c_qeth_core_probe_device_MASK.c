#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {TYPE_5__* ccwgdriver; } ;
struct TYPE_11__ {TYPE_4__* ccwdev; } ;
struct TYPE_10__ {TYPE_4__* ccwdev; } ;
struct TYPE_9__ {TYPE_4__* ccwdev; } ;
struct qeth_card {TYPE_7__ info; int /*<<< orphan*/  list; struct ccwgroup_device* gdev; TYPE_6__ discipline; TYPE_3__ data; TYPE_2__ write; TYPE_1__ read; } ;
struct device {int dummy; } ;
struct ccwgroup_device {TYPE_4__** cdev; struct device dev; } ;
struct TYPE_16__ {int /*<<< orphan*/  rwlock; int /*<<< orphan*/  list; } ;
struct TYPE_13__ {int (* probe ) (struct ccwgroup_device*) ;} ;
struct TYPE_12__ {void* handler; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
#define  QETH_CARD_TYPE_OSD 131 
#define  QETH_CARD_TYPE_OSM 130 
#define  QETH_CARD_TYPE_OSN 129 
#define  QETH_CARD_TYPE_OSX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DISCIPLINE_LAYER2 ; 
 int /*<<< orphan*/  SETUP ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct qeth_card* FUNC7 () ; 
 TYPE_8__ qeth_core_card_list ; 
 int FUNC8 (struct device*) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*) ; 
 int FUNC12 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct qeth_card*) ; 
 int FUNC16 (struct qeth_card*) ; 
 void* qeth_irq ; 
 int FUNC17 (struct qeth_card*) ; 
 int FUNC18 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC21(struct ccwgroup_device *gdev)
{
	struct qeth_card *card;
	struct device *dev;
	int rc;
	unsigned long flags;

	FUNC0(SETUP, 2, "probedev");

	dev = &gdev->dev;
	if (!FUNC4(dev))
		return -ENODEV;

	FUNC1(SETUP, 2, "%s", FUNC2(&gdev->dev));

	card = FUNC7();
	if (!card) {
		FUNC1(SETUP, 2, "1err%d", -ENOMEM);
		rc = -ENOMEM;
		goto err_dev;
	}
	card->read.ccwdev  = gdev->cdev[0];
	card->write.ccwdev = gdev->cdev[1];
	card->data.ccwdev  = gdev->cdev[2];
	FUNC3(&gdev->dev, card);
	card->gdev = gdev;
	gdev->cdev[0]->handler = qeth_irq;
	gdev->cdev[1]->handler = qeth_irq;
	gdev->cdev[2]->handler = qeth_irq;

	rc = FUNC16(card);
	if (rc) {
		FUNC1(SETUP, 2, "3err%d", rc);
		goto err_card;
	}
	rc = FUNC17(card);
	if (rc) {
		FUNC1(SETUP, 2, "2err%d", rc);
		goto err_card;
	}

	if (card->info.type == QETH_CARD_TYPE_OSN)
		rc = FUNC9(dev);
	else
		rc = FUNC8(dev);
	if (rc)
		goto err_card;
	switch (card->info.type) {
	case QETH_CARD_TYPE_OSN:
	case QETH_CARD_TYPE_OSM:
		rc = FUNC12(card, QETH_DISCIPLINE_LAYER2);
		if (rc)
			goto err_attr;
		rc = card->discipline.ccwgdriver->probe(card->gdev);
		if (rc)
			goto err_disc;
	case QETH_CARD_TYPE_OSD:
	case QETH_CARD_TYPE_OSX:
	default:
		break;
	}

	FUNC19(&qeth_core_card_list.rwlock, flags);
	FUNC5(&card->list, &qeth_core_card_list.list);
	FUNC20(&qeth_core_card_list.rwlock, flags);

	FUNC15(card);
	return 0;

err_disc:
	FUNC11(card);
err_attr:
	if (card->info.type == QETH_CARD_TYPE_OSN)
		FUNC14(dev);
	else
		FUNC13(dev);
err_card:
	FUNC10(card);
err_dev:
	FUNC6(dev);
	return rc;
}