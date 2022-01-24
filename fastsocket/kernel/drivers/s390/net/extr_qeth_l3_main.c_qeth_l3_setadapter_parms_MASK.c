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
struct TYPE_3__ {scalar_t__ link_type; } ;
struct qeth_card {TYPE_1__ info; TYPE_2__* gdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_SETADAPTERPARMS ; 
 int /*<<< orphan*/  IPA_SETADP_ALTER_MAC_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ QETH_LINK_TYPE_HSTR ; 
 scalar_t__ QETH_LINK_TYPE_LANE_TR ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*) ; 
 int FUNC8 (struct qeth_card*) ; 
 int FUNC9 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card)
{
	int rc;

	FUNC1(SETUP, 2, "setadprm");

	if (!FUNC6(card, IPA_SETADAPTERPARMS)) {
		FUNC2(&card->gdev->dev,
			"set adapter parameters not supported.\n");
		FUNC1(SETUP, 2, " notsupp");
		return 0;
	}
	rc = FUNC8(card);
	if (rc) {
		FUNC0(2, "%s couldn't set adapter parameters: "
			"0x%x\n", FUNC3(&card->gdev->dev), rc);
		return rc;
	}
	if (FUNC5(card, IPA_SETADP_ALTER_MAC_ADDRESS)) {
		rc = FUNC9(card);
		if (rc)
			FUNC4(&card->gdev->dev, "Reading the adapter MAC"
				" address failed\n");
	}

	if ((card->info.link_type == QETH_LINK_TYPE_HSTR) ||
	    (card->info.link_type == QETH_LINK_TYPE_LANE_TR))
		rc = FUNC7(card);

	return rc;
}