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
struct t3cdev {int dummy; } ;
struct l2t_entry {int state; int /*<<< orphan*/  neigh; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  L2T_STATE_RESOLVING 130 
#define  L2T_STATE_STALE 129 
#define  L2T_STATE_VALID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct t3cdev *dev, struct l2t_entry *e)
{
again:
	switch (e->state) {
	case L2T_STATE_STALE:	/* entry is stale, kick off revalidation */
		FUNC0(e->neigh, NULL);
		FUNC1(&e->lock);
		if (e->state == L2T_STATE_STALE) {
			e->state = L2T_STATE_VALID;
		}
		FUNC2(&e->lock);
		return;
	case L2T_STATE_VALID:	/* fast-path, send the packet on */
		return;
	case L2T_STATE_RESOLVING:
		FUNC1(&e->lock);
		if (e->state != L2T_STATE_RESOLVING) {
			/* ARP already completed */
			FUNC2(&e->lock);
			goto again;
		}
		FUNC2(&e->lock);

		/*
		 * Only the first packet added to the arpq should kick off
		 * resolution.  However, because the alloc_skb below can fail,
		 * we allow each packet added to the arpq to retry resolution
		 * as a way of recovering from transient memory exhaustion.
		 * A better way would be to use a work request to retry L2T
		 * entries when there's no memory.
		 */
		FUNC0(e->neigh, NULL);
	}
	return;
}