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
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_ADD_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  qeth_l3_default_setassparms_cb ; 
 struct qeth_cmd_buffer* FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct qeth_card*,struct qeth_cmd_buffer*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card,
				struct qeth_arp_cache_entry *entry)
{
	struct qeth_cmd_buffer *iob;
	char buf[16];
	int tmp;
	int rc;

	FUNC2(TRACE, 3, "arpadent");

	/*
	 * currently GuestLAN only supports the ARP assist function
	 * IPA_CMD_ASS_ARP_QUERY_INFO, but not IPA_CMD_ASS_ARP_ADD_ENTRY;
	 * thus we say EOPNOTSUPP for this ARP function
	 */
	if (card->info.guestlan)
		return -EOPNOTSUPP;
	if (!FUNC3(card, IPA_ARP_PROCESSING)) {
		return -EOPNOTSUPP;
	}

	iob = FUNC5(card, IPA_ARP_PROCESSING,
				       IPA_CMD_ASS_ARP_ADD_ENTRY,
				       sizeof(struct qeth_arp_cache_entry),
				       QETH_PROT_IPV4);
	rc = FUNC7(card, iob,
				   sizeof(struct qeth_arp_cache_entry),
				   (unsigned long) entry,
				   qeth_l3_default_setassparms_cb, NULL);
	if (rc) {
		tmp = rc;
		FUNC6((u8 *)entry->ipaddr, buf);
		FUNC1(2, "Could not add ARP entry for address %s "
			"on %s: %s (0x%x/%d)\n", buf, FUNC0(card),
			FUNC4(&rc), tmp, tmp);
	}
	return rc;
}