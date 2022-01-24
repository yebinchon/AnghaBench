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
struct qeth_reply {int dummy; } ;
struct TYPE_4__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_2__ hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mac_bits; } ;
struct qeth_card {TYPE_1__ info; } ;

/* Variables and functions */
 int EIO ; 
 int IPA_RC_L2_MAC_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_LAYER2_MAC_REGISTERED ; 
 int /*<<< orphan*/  TRACE ; 

__attribute__((used)) static int FUNC2(struct qeth_card *card,
			   struct qeth_reply *reply,
			   unsigned long data)
{
	struct qeth_ipa_cmd *cmd;

	FUNC0(TRACE, 2, "L2Dmaccb");
	cmd = (struct qeth_ipa_cmd *) data;
	if (cmd->hdr.return_code) {
		FUNC1(TRACE, 2, "err%d", cmd->hdr.return_code);
		if (cmd->hdr.return_code == IPA_RC_L2_MAC_NOT_FOUND) {
			card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;
			cmd->hdr.return_code = 0;
		} else
			cmd->hdr.return_code = -EIO;
		return 0;
	}
	card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;

	return 0;
}