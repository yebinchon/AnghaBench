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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct qeth_card {TYPE_2__* dev; TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int EOPNOTSUPP ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  OSA_ADDR_LEN ; 
 scalar_t__ QETH_CARD_TYPE_OSM ; 
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 scalar_t__ QETH_CARD_TYPE_OSX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ QETH_REAL_CARD ; 
 int /*<<< orphan*/  QETH_RECOVER_THREAD ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct qeth_card *card = dev->ml_priv;
	int rc = 0;

	FUNC2(TRACE, 3, "setmac");

	if (FUNC6(dev) != QETH_REAL_CARD) {
		FUNC2(TRACE, 3, "setmcINV");
		return -EOPNOTSUPP;
	}

	if (card->info.type == QETH_CARD_TYPE_OSN ||
	    card->info.type == QETH_CARD_TYPE_OSM ||
	    card->info.type == QETH_CARD_TYPE_OSX) {
		FUNC2(TRACE, 3, "setmcTYP");
		return -EOPNOTSUPP;
	}
	FUNC3(TRACE, 3, "%s", FUNC0(card));
	FUNC1(TRACE, 3, addr->sa_data, OSA_ADDR_LEN);
	if (FUNC7(card, QETH_RECOVER_THREAD)) {
		FUNC2(TRACE, 3, "setmcREC");
		return -ERESTARTSYS;
	}
	rc = FUNC4(card, &card->dev->dev_addr[0]);
	if (!rc)
		rc = FUNC5(card, addr->sa_data);
	return rc;
}