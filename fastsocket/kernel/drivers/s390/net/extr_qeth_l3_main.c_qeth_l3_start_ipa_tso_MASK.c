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
struct TYPE_5__ {scalar_t__ large_send; } ;
struct qeth_card {TYPE_3__* dev; TYPE_2__ options; TYPE_1__* gdev; } ;
struct TYPE_6__ {int features; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_OUTBOUND_TSO ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ QETH_LARGE_SEND_NO ; 
 scalar_t__ QETH_LARGE_SEND_TSO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;

	FUNC1(TRACE, 3, "sttso");

	if (!FUNC4(card, IPA_OUTBOUND_TSO)) {
		FUNC2(&card->gdev->dev,
			"Outbound TSO not supported on %s\n",
			FUNC0(card));
		rc = -EOPNOTSUPP;
	} else {
		rc = FUNC5(card, IPA_OUTBOUND_TSO,
						IPA_CMD_ASS_START, 0);
		if (rc)
			FUNC3(&card->gdev->dev, "Starting outbound TCP "
				"segmentation offload for %s failed\n",
				FUNC0(card));
		else
			FUNC2(&card->gdev->dev,
				"Outbound TSO enabled\n");
	}
	if (rc && (card->options.large_send == QETH_LARGE_SEND_TSO)) {
		card->options.large_send = QETH_LARGE_SEND_NO;
		card->dev->features &= ~(NETIF_F_TSO | NETIF_F_SG);
	}
	return rc;
}