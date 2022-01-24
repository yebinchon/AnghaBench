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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct ipg_rx {int dummy; } ;
struct ipg_jumbo {scalar_t__ current_size; int /*<<< orphan*/ * skb; scalar_t__ found_start; } ;
struct ipg_nic_private {scalar_t__ rxsupport_size; int /*<<< orphan*/  rxfrag_size; struct sk_buff** rx_buff; struct ipg_jumbo jumbo; } ;

/* Variables and functions */
 scalar_t__ NORMAL_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				       struct ipg_nic_private *sp,
				       struct ipg_rx *rxfd, unsigned entry)
{
	struct ipg_jumbo *jumbo = &sp->jumbo;

	/* 1: found error, 0 no error */
	if (FUNC1(dev) == NORMAL_PACKET) {
		struct sk_buff *skb = sp->rx_buff[entry];

		if (skb) {
			if (jumbo->found_start) {
				jumbo->current_size += sp->rxfrag_size;
				if (jumbo->current_size <= sp->rxsupport_size) {
					FUNC3(FUNC4(jumbo->skb,
						       sp->rxfrag_size),
					       skb->data, sp->rxfrag_size);
				}
			}
			FUNC2(dev);
		}
	} else {
		FUNC0(jumbo->skb);
		jumbo->found_start = 0;
		jumbo->current_size = 0;
		jumbo->skb = NULL;
	}
}