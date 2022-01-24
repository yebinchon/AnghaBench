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
struct sk_buff {int len; char* data; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txDataBuffer ; 
 int /*<<< orphan*/  txDataCount ; 

__attribute__((used)) static inline void FUNC4(struct net_device *dev,
	struct sk_buff *skb)
{
	int count_to_go = skb->len;
	char *buf_ptr = skb->data;

	FUNC2(skb->len, FUNC3(dev, txDataCount));

	for (; count_to_go; buf_ptr++, count_to_go--)
		FUNC1(*buf_ptr, FUNC3(dev, txDataBuffer));

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;

	FUNC0(skb);
}