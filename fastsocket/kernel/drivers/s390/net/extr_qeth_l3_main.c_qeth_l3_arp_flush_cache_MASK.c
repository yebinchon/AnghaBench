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
struct TYPE_2__ {scalar_t__ type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_ARP_PROCESSING ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_FLUSH_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;
	int tmp;

	FUNC2(TRACE, 3, "arpflush");

	/*
	 * currently GuestLAN only supports the ARP assist function
	 * IPA_CMD_ASS_ARP_QUERY_INFO, but not IPA_CMD_ASS_ARP_FLUSH_CACHE;
	 * thus we say EOPNOTSUPP for this ARP function
	*/
	if (card->info.guestlan || (card->info.type == QETH_CARD_TYPE_IQD))
		return -EOPNOTSUPP;
	if (!FUNC3(card, IPA_ARP_PROCESSING)) {
		return -EOPNOTSUPP;
	}
	rc = FUNC5(card, IPA_ARP_PROCESSING,
					  IPA_CMD_ASS_ARP_FLUSH_CACHE, 0);
	if (rc) {
		tmp = rc;
		FUNC1(2, "Could not flush ARP cache on %s: %s "
			"(0x%x/%d)\n", FUNC0(card),
			FUNC4(&rc), tmp, tmp);
	}
	return rc;
}