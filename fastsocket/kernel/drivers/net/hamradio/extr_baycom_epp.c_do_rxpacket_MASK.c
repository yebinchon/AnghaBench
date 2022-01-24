#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int bufcnt; int /*<<< orphan*/  buf; } ;
struct baycom_state {TYPE_1__ hdlcrx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct baycom_state* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC7 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct baycom_state *bc = FUNC4(dev);
	struct sk_buff *skb;
	unsigned char *cp;
	unsigned pktlen;

	if (bc->hdlcrx.bufcnt < 4) 
		return;
	if (!FUNC1(bc->hdlcrx.buf, bc->hdlcrx.bufcnt)) 
		return;
	pktlen = bc->hdlcrx.bufcnt-2+1; /* KISS kludge */
	if (!(skb = FUNC2(pktlen))) {
		FUNC6("%s: memory squeeze, dropping packet\n", dev->name);
		dev->stats.rx_dropped++;
		return;
	}
	cp = FUNC7(skb, pktlen);
	*cp++ = 0; /* KISS kludge */
	FUNC3(cp, bc->hdlcrx.buf, pktlen - 1);
	skb->protocol = FUNC0(skb, dev);
	FUNC5(skb);
	dev->stats.rx_packets++;
}