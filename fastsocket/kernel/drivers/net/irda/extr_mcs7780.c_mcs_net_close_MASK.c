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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  skb; } ;
struct mcs_cb {int /*<<< orphan*/ * irlap; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  rx_urb; TYPE_1__ rx_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mcs_cb* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	int ret = 0;
	struct mcs_cb *mcs = FUNC2(netdev);

	/* Stop transmit processing */
	FUNC3(netdev);

	FUNC1(mcs->rx_buff.skb);

	/* kill and free the receive and transmit URBs */
	FUNC5(mcs->rx_urb);
	FUNC4(mcs->rx_urb);
	FUNC5(mcs->tx_urb);
	FUNC4(mcs->tx_urb);

	/* Stop and remove instance of IrLAP */
	if (mcs->irlap)
		FUNC0(mcs->irlap);

	mcs->irlap = NULL;
	return ret;
}