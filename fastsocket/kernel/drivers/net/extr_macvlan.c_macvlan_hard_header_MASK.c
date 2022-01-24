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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,struct net_device*,unsigned short,void const*,int /*<<< orphan*/ ,unsigned int) ; 
 struct macvlan_dev* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct net_device *dev,
			       unsigned short type, const void *daddr,
			       const void *saddr, unsigned len)
{
	const struct macvlan_dev *vlan = FUNC1(dev);
	struct net_device *lowerdev = vlan->lowerdev;

	return FUNC0(skb, lowerdev, type, daddr,
			       saddr ? : dev->dev_addr, len);
}