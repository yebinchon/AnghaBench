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
struct net_device {char* name; } ;

/* Variables and functions */
 scalar_t__ NET_XMIT_DROP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skbtxq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txlock ; 

__attribute__((used)) static int
FUNC6(int id)
{
	struct sk_buff *skb;
	struct net_device *ifp;

	while ((skb = FUNC3(&skbtxq))) {
		FUNC5(&txlock);
		ifp = skb->dev;
		if (FUNC0(skb) == NET_XMIT_DROP && FUNC1())
			FUNC2("aoe: packet could not be sent on %s.  %s\n",
				ifp ? ifp->name : "netif",
				"consider increasing tx_queue_len");
		FUNC4(&txlock);
	}
	return 0;
}