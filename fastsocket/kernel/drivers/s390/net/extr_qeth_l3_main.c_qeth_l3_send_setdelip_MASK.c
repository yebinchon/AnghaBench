#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  pfxlen; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_3__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_4__ u; } ;
struct TYPE_11__ {unsigned int flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_8__ {unsigned int flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_12__ {TYPE_5__ setdelip4; TYPE_2__ setdelip6; } ;
struct qeth_ipa_cmd {TYPE_6__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 scalar_t__ QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct qeth_cmd_buffer* FUNC3 (struct qeth_card*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card,
		struct qeth_ipaddr *addr, int ipacmd, unsigned int flags)
{
	int rc;
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;
	__u8 netmask[16];

	FUNC0(TRACE, 4, "setdelip");
	FUNC1(TRACE, 4, "flags%02X", flags);

	iob = FUNC3(card, ipacmd, addr->proto);
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	if (addr->proto == QETH_PROT_IPV6) {
		FUNC2(cmd->data.setdelip6.ip_addr, &addr->u.a6.addr,
		       sizeof(struct in6_addr));
		FUNC4(netmask, addr->u.a6.pfxlen);
		FUNC2(cmd->data.setdelip6.mask, netmask,
		       sizeof(struct in6_addr));
		cmd->data.setdelip6.flags = flags;
	} else {
		FUNC2(cmd->data.setdelip4.ip_addr, &addr->u.a4.addr, 4);
		FUNC2(cmd->data.setdelip4.mask, &addr->u.a4.mask, 4);
		cmd->data.setdelip4.flags = flags;
	}

	rc = FUNC5(card, iob, NULL, NULL);

	return rc;
}