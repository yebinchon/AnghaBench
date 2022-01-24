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
struct TYPE_4__ {void* state; } ;
struct TYPE_3__ {void* state; } ;
struct lcs_card {TYPE_2__ read; TYPE_1__ write; int /*<<< orphan*/  state; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_DOWN ; 
 int /*<<< orphan*/  DEV_STATE_UP ; 
 void* LCS_CH_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_INITIATOR_TCPIP ; 
 int FUNC1 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lcs_card*) ; 
 int FUNC3 (struct lcs_card*) ; 
 int FUNC4 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static int
FUNC6(struct lcs_card *card)
{
	int rc = 0;

	FUNC0(2, setup, "lcsdetct");
	/* start/reset card */
	if (card->dev)
		FUNC5(card->dev);
	rc = FUNC4(card);
	if (rc == 0) {
		rc = FUNC2(card);
		if (rc == 0) {
			rc = FUNC1(card, LCS_INITIATOR_TCPIP);
			if (rc == 0)
				rc = FUNC3(card);
		}
	}
	if (rc == 0) {
		card->state = DEV_STATE_UP;
	} else {
		card->state = DEV_STATE_DOWN;
		card->write.state = LCS_CH_STATE_INIT;
		card->read.state =  LCS_CH_STATE_INIT;
	}
	return rc;
}