#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * unique_id; } ;
struct TYPE_5__ {TYPE_1__ create_destroy_addr; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct TYPE_6__ {int unique_id; } ;
struct qeth_card {TYPE_3__ info; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_CMD_CREATE_ADDR ; 
 int /*<<< orphan*/  IPA_IPV6 ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  SETUP ; 
 int UNIQUE_ID_IF_CREATE_ADDR_FAILED ; 
 int UNIQUE_ID_NOT_BY_CARD ; 
 struct qeth_cmd_buffer* FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l3_get_unique_id_cb ; 
 int FUNC3 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card)
{
	int rc = 0;
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;

	FUNC0(SETUP, 2, "guniqeid");

	if (!FUNC2(card, IPA_IPV6)) {
		card->info.unique_id =  UNIQUE_ID_IF_CREATE_ADDR_FAILED |
					UNIQUE_ID_NOT_BY_CARD;
		return 0;
	}

	iob = FUNC1(card, IPA_CMD_CREATE_ADDR,
				     QETH_PROT_IPV6);
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	*((__u16 *) &cmd->data.create_destroy_addr.unique_id[6]) =
			card->info.unique_id;

	rc = FUNC3(card, iob, qeth_l3_get_unique_id_cb, NULL);
	return rc;
}