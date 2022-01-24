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
struct sk_buff {int dummy; } ;
struct ioc3_private {int rx_ci; int rx_pi; int /*<<< orphan*/ * rxr; struct sk_buff** rx_skbs; int /*<<< orphan*/ * txr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_private*) ; 

__attribute__((used)) static void FUNC4(struct ioc3_private *ip)
{
	struct sk_buff *skb;
	int rx_entry, n_entry;

	if (ip->txr) {
		FUNC3(ip);
		FUNC2((unsigned long)ip->txr, 2);
		ip->txr = NULL;
	}

	if (ip->rxr) {
		n_entry = ip->rx_ci;
		rx_entry = ip->rx_pi;

		while (n_entry != rx_entry) {
			skb = ip->rx_skbs[n_entry];
			if (skb)
				FUNC0(skb);

			n_entry = (n_entry + 1) & 511;
		}
		FUNC1((unsigned long)ip->rxr);
		ip->rxr = NULL;
	}
}