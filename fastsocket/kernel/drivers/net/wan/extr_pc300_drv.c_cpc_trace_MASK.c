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
struct sk_buff {char* data; scalar_t__ len; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_CUST ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev, struct sk_buff *skb_main, char rx_tx)
{
	struct sk_buff *skb;

	if ((skb = FUNC0(10 + skb_main->len)) == NULL) {
		FUNC3("%s: out of memory\n", dev->name);
		return;
	}
	FUNC6(skb, 10 + skb_main->len);

	skb->dev = dev;
	skb->protocol = FUNC1(ETH_P_CUST);
	FUNC7(skb);
	skb->pkt_type = PACKET_HOST;
	skb->len = 10 + skb_main->len;

	FUNC5(skb, dev->name, 5);
	skb->data[5] = '[';
	skb->data[6] = rx_tx;
	skb->data[7] = ']';
	skb->data[8] = ':';
	skb->data[9] = ' ';
	FUNC4(skb_main, &skb->data[10], skb_main->len);

	FUNC2(skb);
}