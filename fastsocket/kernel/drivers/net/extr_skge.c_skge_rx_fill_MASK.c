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
struct skge_ring {struct skge_element* start; struct skge_element* to_clean; } ;
struct skge_port {scalar_t__ rx_buf_size; struct skge_ring rx_ring; } ;
struct skge_element {struct skge_element* next; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_port*,struct skge_element*,struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct skge_port *skge = FUNC1(dev);
	struct skge_ring *ring = &skge->rx_ring;
	struct skge_element *e;

	e = ring->start;
	do {
		struct sk_buff *skb;

		skb = FUNC0(dev, skge->rx_buf_size + NET_IP_ALIGN,
					 GFP_KERNEL);
		if (!skb)
			return -ENOMEM;

		FUNC2(skb, NET_IP_ALIGN);
		FUNC3(skge, e, skb, skge->rx_buf_size);
	} while ( (e = e->next) != ring->start);

	ring->to_clean = ring->start;
	return 0;
}