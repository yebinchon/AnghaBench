#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtnet_info {TYPE_2__* dev; int /*<<< orphan*/  svq; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {scalar_t__ num_sg; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sk_buff*) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC4(struct virtnet_info *vi)
{
	struct sk_buff *skb;
	unsigned int len, tot_sgs = 0;

	while ((skb = FUNC3(vi->svq, &len)) != NULL) {
		FUNC1("Sent skb %p\n", skb);
		vi->dev->stats.tx_bytes += skb->len;
		vi->dev->stats.tx_packets++;
		tot_sgs += FUNC2(skb)->num_sg;
		FUNC0(skb);
	}
	return tot_sgs;
}