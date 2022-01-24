#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qeth_channel {scalar_t__ state; int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; } ;

/* Variables and functions */
 struct qeth_card* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CH_STATE_HALTED ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_HALT_CHANNEL_PARM ; 
 int /*<<< orphan*/  QETH_TIMEOUT ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct qeth_channel *channel)
{
	unsigned long flags;
	struct qeth_card *card;
	int rc;

	FUNC1(TRACE, 3, "haltch");
	card = FUNC0(channel->ccwdev);
	FUNC4(FUNC3(channel->ccwdev), flags);
	rc = FUNC2(channel->ccwdev, QETH_HALT_CHANNEL_PARM);
	FUNC5(FUNC3(channel->ccwdev), flags);

	if (rc)
		return rc;
	rc = FUNC6(card->wait_q,
			channel->state == CH_STATE_HALTED, QETH_TIMEOUT);
	if (rc == -ERESTARTSYS)
		return rc;
	if (channel->state != CH_STATE_HALTED)
		return -ETIME;
	return 0;
}