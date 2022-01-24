#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ isolation; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct qeth_card {TYPE_4__* gdev; TYPE_3__ options; TYPE_1__ info; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_2__ kobj; } ;
struct TYPE_9__ {TYPE_5__ dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_SETADP_SET_ACCESS_CONTROL ; 
 scalar_t__ ISOLATION_MODE_NONE ; 
 scalar_t__ QETH_CARD_TYPE_OSD ; 
 scalar_t__ QETH_CARD_TYPE_OSX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*,scalar_t__,int) ; 

int FUNC5(struct qeth_card *card, int fallback)
{
	int rc = 0;

	FUNC1(TRACE, 4, "setactlo");

	if ((card->info.type == QETH_CARD_TYPE_OSD ||
	     card->info.type == QETH_CARD_TYPE_OSX) &&
	     FUNC3(card, IPA_SETADP_SET_ACCESS_CONTROL)) {
		rc = FUNC4(card,
			card->options.isolation, fallback);
		if (rc) {
			FUNC0(3,
				"IPA(SET_ACCESS_CTRL,%s,%d) sent failed\n",
				card->gdev->dev.kobj.name,
				rc);
			rc = -EOPNOTSUPP;
		}
	} else if (card->options.isolation != ISOLATION_MODE_NONE) {
		card->options.isolation = ISOLATION_MODE_NONE;

		FUNC2(&card->gdev->dev, "Adapter does not "
			"support QDIO data connection isolation\n");
		rc = -EOPNOTSUPP;
	}
	return rc;
}