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
struct lcs_channel {scalar_t__ state; size_t io_idx; TYPE_2__* ccwdev; TYPE_1__* ccws; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int CCW_FLAG_SUSPEND ; 
 scalar_t__ LCS_CH_STATE_RUNNING ; 
 scalar_t__ LCS_CH_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC4(struct lcs_channel *channel)
{
	int rc;

	if (channel->state != LCS_CH_STATE_SUSPENDED)
		return 0;
	if (channel->ccws[channel->io_idx].flags & CCW_FLAG_SUSPEND)
		return 0;
	FUNC0(5, trace, "rsch%s", FUNC3(&channel->ccwdev->dev));
	rc = FUNC1(channel->ccwdev);
	if (rc) {
		FUNC0(4, trace, "ersc%s",
			      FUNC3(&channel->ccwdev->dev));
		FUNC2(&channel->ccwdev->dev,
			"Sending data from the LCS device to the LAN failed"
			" with rc=%d\n",rc);
	} else
		channel->state = LCS_CH_STATE_RUNNING;
	return rc;

}