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
struct fnic {int /*<<< orphan*/  link_work; int /*<<< orphan*/  fnic_lock; scalar_t__ stop_rx_link_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  fnic_event_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct fnic *fnic)
{
	unsigned long flags;

	FUNC1(&fnic->fnic_lock, flags);
	if (fnic->stop_rx_link_events) {
		FUNC2(&fnic->fnic_lock, flags);
		return;
	}
	FUNC2(&fnic->fnic_lock, flags);

	FUNC0(fnic_event_queue, &fnic->link_work);

}