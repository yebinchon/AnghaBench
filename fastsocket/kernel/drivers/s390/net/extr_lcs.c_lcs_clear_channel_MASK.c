#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lcs_channel {scalar_t__ state; int /*<<< orphan*/  wait_q; TYPE_1__* ccwdev; } ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ LCS_CH_STATE_CLEARED ; 
 scalar_t__ LCS_CH_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct lcs_channel *channel)
{
	unsigned long flags;
	int rc;

	FUNC0(4,trace,"clearch");
	FUNC1(4, trace, "%s", FUNC3(&channel->ccwdev->dev));
	FUNC5(FUNC4(channel->ccwdev), flags);
	rc = FUNC2(channel->ccwdev, (addr_t) channel);
	FUNC6(FUNC4(channel->ccwdev), flags);
	if (rc) {
		FUNC1(4, trace, "ecsc%s",
			      FUNC3(&channel->ccwdev->dev));
		return rc;
	}
	FUNC7(channel->wait_q, (channel->state == LCS_CH_STATE_CLEARED));
	channel->state = LCS_CH_STATE_STOPPED;
	return rc;
}