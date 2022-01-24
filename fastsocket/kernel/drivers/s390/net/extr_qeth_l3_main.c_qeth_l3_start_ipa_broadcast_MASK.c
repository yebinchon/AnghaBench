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
struct TYPE_5__ {scalar_t__ broadcast_capable; } ;
struct qeth_card {TYPE_3__* dev; TYPE_2__ info; TYPE_1__* gdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IFF_BROADCAST ; 
 int /*<<< orphan*/  IPA_CMD_ASS_CONFIGURE ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ENABLE ; 
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_FILTERING ; 
 scalar_t__ QETH_BROADCAST_WITHOUT_ECHO ; 
 scalar_t__ QETH_BROADCAST_WITH_ECHO ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;

	FUNC1(TRACE, 3, "stbrdcst");
	card->info.broadcast_capable = 0;
	if (!FUNC4(card, IPA_FILTERING)) {
		FUNC2(&card->gdev->dev,
			"Broadcast not supported on %s\n",
			FUNC0(card));
		rc = -EOPNOTSUPP;
		goto out;
	}
	rc = FUNC5(card, IPA_FILTERING,
					  IPA_CMD_ASS_START, 0);
	if (rc) {
		FUNC3(&card->gdev->dev, "Enabling broadcast filtering for "
			"%s failed\n", FUNC0(card));
		goto out;
	}

	rc = FUNC5(card, IPA_FILTERING,
					  IPA_CMD_ASS_CONFIGURE, 1);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"Setting up broadcast filtering for %s failed\n",
			FUNC0(card));
		goto out;
	}
	card->info.broadcast_capable = QETH_BROADCAST_WITH_ECHO;
	FUNC2(&card->gdev->dev, "Broadcast enabled\n");
	rc = FUNC5(card, IPA_FILTERING,
					  IPA_CMD_ASS_ENABLE, 1);
	if (rc) {
		FUNC3(&card->gdev->dev, "Setting up broadcast echo "
			"filtering for %s failed\n", FUNC0(card));
		goto out;
	}
	card->info.broadcast_capable = QETH_BROADCAST_WITHOUT_ECHO;
out:
	if (card->info.broadcast_capable)
		card->dev->flags |= IFF_BROADCAST;
	else
		card->dev->flags &= ~IFF_BROADCAST;
	return rc;
}