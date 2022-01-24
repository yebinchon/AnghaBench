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
struct TYPE_3__ {int /*<<< orphan*/  csum_mask; } ;
struct qeth_card {TYPE_2__* gdev; TYPE_1__ info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_CMD_ASS_ENABLE ; 
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card)
{
	int rc;

	rc = FUNC2(card, IPA_INBOUND_CHECKSUM,
					  IPA_CMD_ASS_START, 0);
	if (rc) {
		FUNC1(&card->gdev->dev, "Starting HW checksumming for %s "
			"failed, using SW checksumming\n",
			FUNC0(card));
		return rc;
	}
	rc = FUNC2(card, IPA_INBOUND_CHECKSUM,
					  IPA_CMD_ASS_ENABLE,
					  card->info.csum_mask);
	if (rc) {
		FUNC1(&card->gdev->dev, "Enabling HW checksumming for %s "
			"failed, using SW checksumming\n",
			FUNC0(card));
		return rc;
	}
	return 0;
}