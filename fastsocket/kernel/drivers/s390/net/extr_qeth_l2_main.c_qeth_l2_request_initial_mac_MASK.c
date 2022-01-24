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
struct TYPE_3__ {scalar_t__ type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_2__* dev; TYPE_1__ info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  IPA_SETADAPTERPARMS ; 
 int /*<<< orphan*/  OSA_ADDR_LEN ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 scalar_t__ QETH_CARD_TYPE_OSM ; 
 scalar_t__ QETH_CARD_TYPE_OSX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*) ; 
 int FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card)
{
	int rc = 0;
	char vendor_pre[] = {0x02, 0x00, 0x00};

	FUNC3(SETUP, 2, "doL2init");
	FUNC4(SETUP, 2, "doL2%s", FUNC0(card));

	if (FUNC6(card, IPA_SETADAPTERPARMS)) {
		rc = FUNC7(card);
		if (rc) {
			FUNC2(2, "could not query adapter "
				"parameters on device %s: x%x\n",
				FUNC0(card), rc);
		}
	}

	if (card->info.type == QETH_CARD_TYPE_IQD ||
	    card->info.type == QETH_CARD_TYPE_OSM ||
	    card->info.type == QETH_CARD_TYPE_OSX ||
	    card->info.guestlan) {
		rc = FUNC8(card);
		if (rc) {
			FUNC2(2, "couldn't get MAC address on "
				"device %s: x%x\n", FUNC0(card), rc);
			FUNC4(SETUP, 2, "1err%d", rc);
			return rc;
		}
		FUNC1(SETUP, 2, card->dev->dev_addr, OSA_ADDR_LEN);
	} else {
		FUNC9(card->dev->dev_addr);
		FUNC5(card->dev->dev_addr, vendor_pre, 3);
	}
	return 0;
}