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
struct TYPE_2__ {scalar_t__ expires; } ;
struct veth_lpar_connection {scalar_t__ num_pending_acks; int /*<<< orphan*/  lock; TYPE_1__ ack_timer; scalar_t__ ack_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct veth_lpar_connection*) ; 

__attribute__((used)) static void FUNC4(unsigned long ptr)
{
	struct veth_lpar_connection *cnx = (struct veth_lpar_connection *) ptr;
	unsigned long flags;

	/* Ack all the events */
	FUNC1(&cnx->lock, flags);
	if (cnx->num_pending_acks > 0)
		FUNC3(cnx);

	/* Reschedule the timer */
	cnx->ack_timer.expires = jiffies + cnx->ack_timeout;
	FUNC0(&cnx->ack_timer);
	FUNC2(&cnx->lock, flags);
}