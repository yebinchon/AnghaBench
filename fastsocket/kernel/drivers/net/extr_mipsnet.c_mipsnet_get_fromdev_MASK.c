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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {size_t rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 size_t EFAULT ; 
 size_t ENOMEM ; 
 scalar_t__ NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static inline ssize_t FUNC6(struct net_device *dev, size_t len)
{
	struct sk_buff *skb;

	if (!len)
		return len;

	skb = FUNC0(len + NET_IP_ALIGN);
	if (!skb) {
		dev->stats.rx_dropped++;
		return -ENOMEM;
	}

	FUNC5(skb, NET_IP_ALIGN);
	if (FUNC2(dev, FUNC4(skb, len), len))
		return -EFAULT;

	skb->protocol = FUNC1(skb, dev);
	skb->ip_summed = CHECKSUM_UNNECESSARY;

	FUNC3(skb);

	dev->stats.rx_packets++;
	dev->stats.rx_bytes += len;

	return len;
}