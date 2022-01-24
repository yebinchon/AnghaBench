#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_CMD_ASS_START ; 
 int /*<<< orphan*/  IPA_IP_FRAGMENTATION ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;

	FUNC1(TRACE, 3, "ipaipfrg");

	if (!FUNC4(card, IPA_IP_FRAGMENTATION)) {
		FUNC2(&card->gdev->dev,
			"Hardware IP fragmentation not supported on %s\n",
			FUNC0(card));
		return  -EOPNOTSUPP;
	}

	rc = FUNC5(card, IPA_IP_FRAGMENTATION,
					  IPA_CMD_ASS_START, 0);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"Starting IP fragmentation support for %s failed\n",
			FUNC0(card));
	} else
		FUNC2(&card->gdev->dev,
			"Hardware IP fragmentation enabled \n");
	return rc;
}