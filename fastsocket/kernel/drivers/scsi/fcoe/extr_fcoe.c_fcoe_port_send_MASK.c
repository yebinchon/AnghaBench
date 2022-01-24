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
struct TYPE_2__ {scalar_t__ qlen; } ;
struct fcoe_port {int /*<<< orphan*/  lport; TYPE_1__ fcoe_pending_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct fcoe_port *port, struct sk_buff *skb)
{
	if (port->fcoe_pending_queue.qlen)
		FUNC0(port->lport, skb);
	else if (FUNC1(skb))
		FUNC0(port->lport, skb);
}