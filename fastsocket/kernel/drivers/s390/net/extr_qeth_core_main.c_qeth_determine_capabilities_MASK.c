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
struct TYPE_5__ {int /*<<< orphan*/  cq; } ;
struct TYPE_6__ {int qfmt; int qdioac1; int qdioac3; int icnt; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__* gdev; TYPE_3__ ssqd; } ;
struct ccw_device {int /*<<< orphan*/  online; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ccw_device* FUNC0 (struct qeth_card*) ; 
 int CHSC_AC1_INITIATE_INPUTQ ; 
 int CHSC_AC3_FORMAT2_CQ_AVAILABLE ; 
 int QDIO_IQDIO_QFMT ; 
 int /*<<< orphan*/  QETH_CQ_NOTAVAILABLE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 int FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct ccw_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*,char*) ; 
 int FUNC12 (struct qeth_card*,void**,int*) ; 

__attribute__((used)) static void FUNC13(struct qeth_card *card)
{
	int rc;
	int length;
	char *prcd;
	struct ccw_device *ddev;
	int ddev_offline = 0;

	FUNC2(SETUP, 2, "detcapab");
	ddev = FUNC0(card);
	if (!ddev->online) {
		ddev_offline = 1;
		rc = FUNC5(ddev);
		if (rc) {
			FUNC3(SETUP, 2, "3err%d", rc);
			goto out;
		}
	}

	rc = FUNC12(card, (void **) &prcd, &length);
	if (rc) {
		FUNC1(2, "%s qeth_read_conf_data returned %i\n",
			FUNC7(&card->gdev->dev), rc);
		FUNC3(SETUP, 2, "5err%d", rc);
		goto out_offline;
	}
	FUNC11(card, prcd);
	if (ddev_offline)
		FUNC10(card, prcd);
	FUNC8(prcd);

	rc = FUNC9(ddev, &card->ssqd);
	if (rc)
		FUNC3(SETUP, 2, "6err%d", rc);

	FUNC3(SETUP, 2, "qfmt%d", card->ssqd.qfmt);
	FUNC3(SETUP, 2, "%d", card->ssqd.qdioac1);
	FUNC3(SETUP, 2, "%d", card->ssqd.qdioac3);
	FUNC3(SETUP, 2, "icnt%d", card->ssqd.icnt);
	if (!((card->ssqd.qfmt != QDIO_IQDIO_QFMT) ||
	    ((card->ssqd.qdioac1 & CHSC_AC1_INITIATE_INPUTQ) == 0) ||
	    ((card->ssqd.qdioac3 & CHSC_AC3_FORMAT2_CQ_AVAILABLE) == 0))) {
		FUNC6(&card->gdev->dev,
			"Completion Queueing supported\n");
	} else {
		card->options.cq = QETH_CQ_NOTAVAILABLE;
	}


out_offline:
	if (ddev_offline == 1)
		FUNC4(ddev);
out:
	return;
}