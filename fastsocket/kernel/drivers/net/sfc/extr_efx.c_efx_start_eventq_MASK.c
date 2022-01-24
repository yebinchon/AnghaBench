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
struct efx_channel {int work_pending; int enabled; int /*<<< orphan*/  napi_str; int /*<<< orphan*/  channel; TYPE_1__* efx; } ;
struct TYPE_2__ {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_channel*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct efx_channel *channel)
{
	FUNC2(channel->efx, ifup, channel->efx->net_dev,
		  "chan %d start event queue\n", channel->channel);

	/* The interrupt handler for this channel may set work_pending
	 * as soon as we enable it.  Make sure it's cleared before
	 * then.  Similarly, make sure it sees the enabled flag set.
	 */
	channel->work_pending = false;
	channel->enabled = true;
	FUNC3();

	FUNC1(&channel->napi_str);
	FUNC0(channel);
}