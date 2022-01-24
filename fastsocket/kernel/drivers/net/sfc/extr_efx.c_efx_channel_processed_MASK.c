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
struct efx_channel {int work_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct efx_channel *channel)
{
	/* The interrupt handler for this channel may set work_pending
	 * as soon as we acknowledge the events we've seen.  Make sure
	 * it's cleared before then. */
	channel->work_pending = false;
	FUNC1();

	FUNC0(channel);
}