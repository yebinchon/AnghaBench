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
typedef  int /*<<< orphan*/  u8 ;
struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
struct qeth_arp_cache_entry {scalar_t__ ipaddr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_ARP_PROCESSING ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_REMOVE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (char*,struct qeth_arp_cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  qeth_l3_default_setassparms_cb ; 
 struct qeth_cmd_buffer* FUNC7 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (struct qeth_card*,struct qeth_cmd_buffer*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card,
				struct qeth_arp_cache_entry *entry)
{
	struct qeth_cmd_buffer *iob;
	char buf[16] = {0, };
	int tmp;
	int rc;

	FUNC2(TRACE, 3, "arprment");

	/*
	 * currently GuestLAN only supports the ARP assist function
	 * IPA_CMD_ASS_ARP_QUERY_INFO, but not IPA_CMD_ASS_ARP_REMOVE_ENTRY;
	 * thus we say EOPNOTSUPP for this ARP function
	 */
	if (card->info.guestlan)
		return -EOPNOTSUPP;
	if (!FUNC5(card, IPA_ARP_PROCESSING)) {
		return -EOPNOTSUPP;
	}
	FUNC3(buf, entry, 12);
	iob = FUNC7(card, IPA_ARP_PROCESSING,
				       IPA_CMD_ASS_ARP_REMOVE_ENTRY,
				       12,
				       QETH_PROT_IPV4);
	rc = FUNC9(card, iob,
				   12, (unsigned long)buf,
				   qeth_l3_default_setassparms_cb, NULL);
	if (rc) {
		tmp = rc;
		FUNC4(buf, 0, 16);
		FUNC8((u8 *)entry->ipaddr, buf);
		FUNC1(2, "Could not delete ARP entry for address %s"
			" on %s: %s (0x%x/%d)\n", buf, FUNC0(card),
			FUNC6(&rc), tmp, tmp);
	}
	return rc;
}