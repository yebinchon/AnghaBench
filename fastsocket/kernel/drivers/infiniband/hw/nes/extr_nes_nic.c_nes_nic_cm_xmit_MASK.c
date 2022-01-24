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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_CM ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC2(struct sk_buff *skb, struct net_device *netdev)
{
	int ret;

	skb->dev = netdev;
	ret = FUNC0(skb);
	if (ret) {
		FUNC1(NES_DBG_CM, "Bad return code from dev_queue_xmit %d\n", ret);
	}

	return ret;
}