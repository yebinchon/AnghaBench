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
struct sk_buff {scalar_t__ cb; } ;
struct net_device {int dummy; } ;
struct ipoib_header {scalar_t__ reserved; int /*<<< orphan*/  proto; } ;
struct ipoib_cb {int /*<<< orphan*/  hwaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFINIBAND_ALEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			     struct net_device *dev,
			     unsigned short type,
			     const void *daddr, const void *saddr, unsigned len)
{
	struct ipoib_header *header;
	struct ipoib_cb *cb = (struct ipoib_cb *) skb->cb;

	header = (struct ipoib_header *) FUNC2(skb, sizeof *header);

	header->proto = FUNC0(type);
	header->reserved = 0;

	/*
	 * we don't rely on dst_entry structure,  always stuff the
	 * destination address into skb->cb so we can figure out where
	 * to send the packet later.
	 */
	FUNC1(cb->hwaddr, daddr, INFINIBAND_ALEN);

	return sizeof *header;
}