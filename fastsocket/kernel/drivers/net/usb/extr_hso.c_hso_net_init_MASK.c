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
struct net_device {int flags; int tx_queue_len; scalar_t__ mtu; int /*<<< orphan*/  type; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct hso_net {int /*<<< orphan*/  net_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ DEFAULT_MTU ; 
 int /*<<< orphan*/  HSO_NET_TX_TIMEOUT ; 
 int IFF_MULTICAST ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hso_netdev_ops ; 
 struct hso_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *net)
{
	struct hso_net *hso_net = FUNC2(net);

	FUNC0("sizeof hso_net is %d", (int)sizeof(*hso_net));

	/* fill in the other fields */
	net->netdev_ops = &hso_netdev_ops;
	net->watchdog_timeo = HSO_NET_TX_TIMEOUT;
	net->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
	net->type = ARPHRD_NONE;
	net->mtu = DEFAULT_MTU - 14;
	net->tx_queue_len = 10;
	FUNC1(net, &ops);

	/* and initialize the semaphore */
	FUNC3(&hso_net->net_lock);
}