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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {unsigned long tx_packets; unsigned long tx_bytes; } ;
struct ioc3_private {int tx_ci; unsigned long txqlen; int /*<<< orphan*/  ioc3_lock; TYPE_1__ stats; struct sk_buff** tx_skbs; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct ioc3_private *ip)
{
	unsigned long packets, bytes;
	struct ioc3 *ioc3 = ip->regs;
	int tx_entry, o_entry;
	struct sk_buff *skb;
	u32 etcir;

	FUNC4(&ip->ioc3_lock);
	etcir = FUNC1();

	tx_entry = (etcir >> 7) & 127;
	o_entry = ip->tx_ci;
	packets = 0;
	bytes = 0;

	while (o_entry != tx_entry) {
		packets++;
		skb = ip->tx_skbs[o_entry];
		bytes += skb->len;
		FUNC0(skb);
		ip->tx_skbs[o_entry] = NULL;

		o_entry = (o_entry + 1) & 127;		/* Next */

		etcir = FUNC1();			/* More pkts sent?  */
		tx_entry = (etcir >> 7) & 127;
	}

	ip->stats.tx_packets += packets;
	ip->stats.tx_bytes += bytes;
	ip->txqlen -= packets;

	if (ip->txqlen < 128)
		FUNC2(FUNC3(ip));

	ip->tx_ci = o_entry;
	FUNC5(&ip->ioc3_lock);
}