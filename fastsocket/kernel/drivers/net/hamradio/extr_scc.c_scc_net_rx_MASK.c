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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct scc_channel {int /*<<< orphan*/  dev; TYPE_1__ dev_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct scc_channel *scc, struct sk_buff *skb)
{
	if (skb->len == 0) {
		FUNC1(skb);
		return;
	}
		
	scc->dev_stat.rx_packets++;
	scc->dev_stat.rx_bytes += skb->len;

	skb->protocol = FUNC0(skb, scc->dev);
	
	FUNC2(skb);
	return;
}