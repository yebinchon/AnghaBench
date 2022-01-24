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
struct TYPE_3__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  mac_length; } ;
struct TYPE_4__ {TYPE_1__ setdelmac; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  OSA_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qeth_cmd_buffer* FUNC2 (struct qeth_card*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qeth_card*,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card, __u8 *mac,
			   enum qeth_ipa_cmds ipacmd,
			   int (*reply_cb) (struct qeth_card *,
					    struct qeth_reply*,
					    unsigned long))
{
	struct qeth_ipa_cmd *cmd;
	struct qeth_cmd_buffer *iob;

	FUNC0(TRACE, 2, "L2sdmac");
	iob = FUNC2(card, ipacmd, QETH_PROT_IPV4);
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	cmd->data.setdelmac.mac_length = OSA_ADDR_LEN;
	FUNC1(&cmd->data.setdelmac.mac, mac, OSA_ADDR_LEN);
	return FUNC3(card, iob, reply_cb, NULL);
}