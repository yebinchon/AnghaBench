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
struct TYPE_3__ {int len; int /*<<< orphan*/  buffer; } ;
struct hdlcdrv_state {TYPE_1__ hdlcrx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct hdlcdrv_state *s)
{
	struct sk_buff *skb;
	int pkt_len;
	unsigned char *cp;

	if (s->hdlcrx.len < 4) 
		return;
	if (!FUNC1(s->hdlcrx.buffer, s->hdlcrx.len)) 
		return;
	pkt_len = s->hdlcrx.len - 2 + 1; /* KISS kludge */
	if (!(skb = FUNC2(pkt_len))) {
		FUNC5("%s: memory squeeze, dropping packet\n", dev->name);
		dev->stats.rx_dropped++;
		return;
	}
	cp = FUNC6(skb, pkt_len);
	*cp++ = 0; /* KISS kludge */
	FUNC3(cp, s->hdlcrx.buffer, pkt_len - 1);
	skb->protocol = FUNC0(skb, dev);
	FUNC4(skb);
	dev->stats.rx_packets++;
}