#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qeth_ipa_cmd {int dummy; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int /*<<< orphan*/  write; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef  enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;

/* Variables and functions */
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,struct qeth_ipa_cmd*,int,int) ; 
 struct qeth_cmd_buffer* FUNC1 (int /*<<< orphan*/ *) ; 

struct qeth_cmd_buffer *FUNC2(struct qeth_card *card,
		enum qeth_ipa_cmds ipacmd, enum qeth_prot_versions prot)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;

	iob = FUNC1(&card->write);
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	FUNC0(card, cmd, ipacmd, prot);

	return iob;
}