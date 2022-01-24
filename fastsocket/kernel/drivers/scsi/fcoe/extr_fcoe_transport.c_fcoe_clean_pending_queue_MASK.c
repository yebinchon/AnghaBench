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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fcoe_port {TYPE_1__ fcoe_pending_queue; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct fcoe_port* FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fc_lport *lport)
{
	struct fcoe_port  *port = FUNC2(lport);
	struct sk_buff *skb;

	FUNC3(&port->fcoe_pending_queue.lock);
	while ((skb = FUNC0(&port->fcoe_pending_queue)) != NULL) {
		FUNC4(&port->fcoe_pending_queue.lock);
		FUNC1(skb);
		FUNC3(&port->fcoe_pending_queue.lock);
	}
	FUNC4(&port->fcoe_pending_queue.lock);
}