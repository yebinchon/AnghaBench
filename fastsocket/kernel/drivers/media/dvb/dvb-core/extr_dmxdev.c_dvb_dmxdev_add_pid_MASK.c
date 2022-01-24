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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  ts; } ;
struct TYPE_4__ {scalar_t__ output; } ;
struct TYPE_5__ {TYPE_1__ pes; } ;
struct dmxdev_filter {scalar_t__ type; scalar_t__ state; TYPE_3__ feed; TYPE_2__ params; } ;
struct dmxdev_feed {int /*<<< orphan*/  next; int /*<<< orphan*/  pid; } ;
struct dmxdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMXDEV_STATE_GO ; 
 scalar_t__ DMXDEV_STATE_SET ; 
 scalar_t__ DMXDEV_TYPE_PES ; 
 scalar_t__ DMX_OUT_TSDEMUX_TAP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dmxdev*,struct dmxdev_filter*,struct dmxdev_feed*) ; 
 struct dmxdev_feed* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dmxdev *dmxdev,
			      struct dmxdev_filter *filter, u16 pid)
{
	struct dmxdev_feed *feed;

	if ((filter->type != DMXDEV_TYPE_PES) ||
	    (filter->state < DMXDEV_STATE_SET))
		return -EINVAL;

	/* only TS packet filters may have multiple PIDs */
	if ((filter->params.pes.output != DMX_OUT_TSDEMUX_TAP) &&
	    (!FUNC3(&filter->feed.ts)))
		return -EINVAL;

	feed = FUNC1(sizeof(struct dmxdev_feed), GFP_KERNEL);
	if (feed == NULL)
		return -ENOMEM;

	feed->pid = pid;
	FUNC2(&feed->next, &filter->feed.ts);

	if (filter->state >= DMXDEV_STATE_GO)
		return FUNC0(dmxdev, filter, feed);

	return 0;
}