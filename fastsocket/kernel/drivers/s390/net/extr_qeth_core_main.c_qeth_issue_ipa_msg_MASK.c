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
struct TYPE_3__ {int command; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {TYPE_2__* gdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct qeth_ipa_cmd *cmd, int rc,
		struct qeth_card *card)
{
	char *ipa_name;
	int com = cmd->hdr.command;
	ipa_name = FUNC3(com);
	if (rc)
		FUNC1(2, "IPA: %s(x%X) for %s/%s returned "
				"x%X \"%s\"\n",
				ipa_name, com, FUNC2(&card->gdev->dev),
				FUNC0(card), rc,
				FUNC4(rc));
	else
		FUNC1(5, "IPA: %s(x%X) for %s/%s succeeded\n",
				ipa_name, com, FUNC2(&card->gdev->dev),
				FUNC0(card));
}