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
struct TYPE_3__ {int subcmd_len; int /*<<< orphan*/  subcmd; } ;
struct TYPE_4__ {TYPE_1__ diagass; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_CMD_SET_DIAG_ASS ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_QUERY ; 
 int /*<<< orphan*/  SETUP ; 
 struct qeth_cmd_buffer* FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_query_setdiagass_cb ; 
 int FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd    *cmd;

	FUNC0(SETUP, 2, "qdiagass");
	iob = FUNC1(card, IPA_CMD_SET_DIAG_ASS, 0);
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	cmd->data.diagass.subcmd_len = 16;
	cmd->data.diagass.subcmd = QETH_DIAGS_CMD_QUERY;
	return FUNC2(card, iob, qeth_query_setdiagass_cb, NULL);
}