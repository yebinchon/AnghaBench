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
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct lcs_card {scalar_t__ state; TYPE_2__ write; TYPE_1__ read; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_DOWN ; 
 scalar_t__ DEV_STATE_UP ; 
 scalar_t__ LCS_CH_STATE_ERROR ; 
 scalar_t__ LCS_CH_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_INITIATOR_TCPIP ; 
 int /*<<< orphan*/  FUNC1 (struct lcs_card*) ; 
 int FUNC2 (struct lcs_card*) ; 
 int FUNC3 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lcs_card*) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static int
FUNC5(struct lcs_card *card)
{
	int rc;

	FUNC0(3, setup, "stopcard");

	if (card->read.state != LCS_CH_STATE_STOPPED &&
	    card->write.state != LCS_CH_STATE_STOPPED &&
	    card->read.state != LCS_CH_STATE_ERROR &&
	    card->write.state != LCS_CH_STATE_ERROR &&
	    card->state == DEV_STATE_UP) {
		FUNC1(card);
		rc = FUNC3(card,LCS_INITIATOR_TCPIP);
		rc = FUNC2(card);
	}
	rc = FUNC4(card);
	card->state = DEV_STATE_DOWN;

	return rc;
}