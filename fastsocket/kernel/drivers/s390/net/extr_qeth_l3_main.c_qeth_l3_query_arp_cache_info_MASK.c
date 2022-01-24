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
struct TYPE_5__ {int request_bits; scalar_t__ no_entries; scalar_t__ reply_bits; } ;
struct TYPE_6__ {TYPE_1__ query_arp; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_3__ setassparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
struct qeth_arp_query_info {int dummy; } ;
struct qeth_arp_query_data {int dummy; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_ARP_PROCESSING ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_QUERY_INFO ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 scalar_t__ QETH_ARP_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ QETH_SETASS_BASE_LEN ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  qeth_l3_arp_query_cb ; 
 struct qeth_cmd_buffer* FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct qeth_card*,struct qeth_cmd_buffer*,scalar_t__,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card,
	enum qeth_prot_versions prot,
	struct qeth_arp_query_info *qinfo)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;
	int tmp;
	int rc;

	FUNC2(TRACE, 3, "qarpipv%i", prot);

	iob = FUNC4(card, IPA_ARP_PROCESSING,
			IPA_CMD_ASS_ARP_QUERY_INFO,
			sizeof(struct qeth_arp_query_data) - sizeof(char),
			prot);
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	cmd->data.setassparms.data.query_arp.request_bits = 0x000F;
	cmd->data.setassparms.data.query_arp.reply_bits = 0;
	cmd->data.setassparms.data.query_arp.no_entries = 0;
	rc = FUNC5(card, iob,
			   QETH_SETASS_BASE_LEN+QETH_ARP_CMD_LEN,
			   qeth_l3_arp_query_cb, (void *)qinfo);
	if (rc) {
		tmp = rc;
		FUNC1(2,
			"Error while querying ARP cache on %s: %s "
			"(0x%x/%d)\n", FUNC0(card),
			FUNC3(&rc), tmp, tmp);
	}

	return rc;
}