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
struct ioat_chan_common {unsigned long last_completion; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ COMPLETION_TIMEOUT ; 
 int /*<<< orphan*/  IOAT_COMPLETION_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (struct ioat_chan_common*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

bool FUNC3(struct ioat_chan_common *chan,
			   unsigned long *phys_complete)
{
	*phys_complete = FUNC1(chan);
	if (*phys_complete == chan->last_completion)
		return false;
	FUNC0(IOAT_COMPLETION_ACK, &chan->state);
	FUNC2(&chan->timer, jiffies + COMPLETION_TIMEOUT);

	return true;
}