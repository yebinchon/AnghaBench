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
struct TYPE_3__ {scalar_t__ checksum_type; } ;
struct qeth_card {TYPE_2__* gdev; TYPE_1__ options; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM ; 
 scalar_t__ NO_CHECKSUMMING ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ SW_CHECKSUMMING ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card)
{
	int rc = 0;

	FUNC1(TRACE, 3, "strtcsum");

	if (card->options.checksum_type == NO_CHECKSUMMING) {
		FUNC2(&card->gdev->dev,
			"Using no checksumming on %s.\n",
			FUNC0(card));
		return 0;
	}
	if (card->options.checksum_type == SW_CHECKSUMMING) {
		FUNC2(&card->gdev->dev,
			"Using SW checksumming on %s.\n",
			FUNC0(card));
		return 0;
	}
	if (!FUNC3(card, IPA_INBOUND_CHECKSUM)) {
		FUNC2(&card->gdev->dev,
			"Inbound HW Checksumming not "
			"supported on %s,\ncontinuing "
			"using Inbound SW Checksumming\n",
			FUNC0(card));
		card->options.checksum_type = SW_CHECKSUMMING;
		return 0;
	}
	rc = FUNC4(card);
	if (!rc)
		FUNC2(&card->gdev->dev,
			"HW Checksumming (inbound) enabled\n");

	return rc;
}