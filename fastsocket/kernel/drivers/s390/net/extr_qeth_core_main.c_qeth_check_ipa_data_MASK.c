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
struct TYPE_4__ {int command; int /*<<< orphan*/  return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int hwtrap; int /*<<< orphan*/  chpid; } ;
struct qeth_card {int lan_online; TYPE_3__ info; int /*<<< orphan*/  dev; TYPE_2__* gdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IPA_CMD_DELCCID ; 
#define  IPA_CMD_MODCCID 132 
#define  IPA_CMD_REGISTER_LOCAL_ADDR 131 
 int IPA_CMD_SETCCID ; 
 int IPA_CMD_SET_DIAG_ASS ; 
#define  IPA_CMD_STARTLAN 130 
#define  IPA_CMD_STOPLAN 129 
#define  IPA_CMD_UNREGISTER_LOCAL_ADDR 128 
 int /*<<< orphan*/  IPA_RC_VEPA_TO_VEB_TRANSITION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qeth_ipa_cmd*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_ipa_cmd*,int /*<<< orphan*/ ,struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_card*) ; 

__attribute__((used)) static struct qeth_ipa_cmd *FUNC15(struct qeth_card *card,
		struct qeth_cmd_buffer *iob)
{
	struct qeth_ipa_cmd *cmd = NULL;

	FUNC5(TRACE, 5, "chkipad");
	if (FUNC0(iob->data)) {
		cmd = (struct qeth_ipa_cmd *) FUNC2(iob->data);
		if (FUNC1(cmd)) {
			if (cmd->hdr.command != IPA_CMD_SETCCID &&
			    cmd->hdr.command != IPA_CMD_DELCCID &&
			    cmd->hdr.command != IPA_CMD_MODCCID &&
			    cmd->hdr.command != IPA_CMD_SET_DIAG_ASS)
				FUNC13(cmd,
						cmd->hdr.return_code, card);
			return cmd;
		} else {
			switch (cmd->hdr.command) {
			case IPA_CMD_STOPLAN:
				if (cmd->hdr.return_code ==
						IPA_RC_VEPA_TO_VEB_TRANSITION) {
					FUNC6(&card->gdev->dev,
					   "Interface %s is down because the "
					   "adjacent port is no longer in "
					   "reflective relay mode\n",
					   FUNC3(card));
					FUNC12(card);
				} else {
					FUNC8(&card->gdev->dev,
					   "The link for interface %s on CHPID"
					   " 0x%X failed\n",
					   FUNC3(card),
					   card->info.chpid);
					FUNC13(cmd,
						cmd->hdr.return_code, card);
				}
				card->lan_online = 0;
				if (card->dev && FUNC10(card->dev))
					FUNC9(card->dev);
				return NULL;
			case IPA_CMD_STARTLAN:
				FUNC7(&card->gdev->dev,
					   "The link for %s on CHPID 0x%X has"
					   " been restored\n",
					   FUNC3(card),
					   card->info.chpid);
				FUNC11(card->dev);
				card->lan_online = 1;
				if (card->info.hwtrap)
					card->info.hwtrap = 2;
				FUNC14(card);
				return NULL;
			case IPA_CMD_MODCCID:
				return cmd;
			case IPA_CMD_REGISTER_LOCAL_ADDR:
				FUNC5(TRACE, 3, "irla");
				break;
			case IPA_CMD_UNREGISTER_LOCAL_ADDR:
				FUNC5(TRACE, 3, "urla");
				break;
			default:
				FUNC4(2, "Received data is IPA "
					   "but not a reply!\n");
				break;
			}
		}
	}
	return cmd;
}