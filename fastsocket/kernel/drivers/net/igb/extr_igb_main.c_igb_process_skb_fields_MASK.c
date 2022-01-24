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
typedef  union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct igb_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  queue_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct igb_ring *rx_ring,
				   union e1000_adv_rx_desc *rx_desc,
				   struct sk_buff *skb)
{
	FUNC3(rx_ring, rx_desc, skb);

	FUNC2(rx_ring, rx_desc, skb);

	FUNC1(rx_ring, rx_desc, skb);

	FUNC4(skb, rx_ring->queue_index);

	skb->protocol = FUNC0(skb, rx_ring->netdev);
}