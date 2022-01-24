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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  in_frame; int /*<<< orphan*/ * head; int /*<<< orphan*/ * skb; } ;
struct ks959_cb {int /*<<< orphan*/ * irlap; scalar_t__ receiving; TYPE_1__ rx_unwrap_buff; int /*<<< orphan*/ * rx_urb; int /*<<< orphan*/ * speed_urb; int /*<<< orphan*/ * tx_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OUTSIDE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ks959_cb* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct ks959_cb *kingsun = FUNC2(netdev);

	/* Stop transmit processing */
	FUNC3(netdev);

	/* Mop up receive && transmit urb's */
	FUNC5(kingsun->tx_urb);
	FUNC4(kingsun->tx_urb);
	kingsun->tx_urb = NULL;

	FUNC5(kingsun->speed_urb);
	FUNC4(kingsun->speed_urb);
	kingsun->speed_urb = NULL;

	FUNC5(kingsun->rx_urb);
	FUNC4(kingsun->rx_urb);
	kingsun->rx_urb = NULL;

	FUNC1(kingsun->rx_unwrap_buff.skb);
	kingsun->rx_unwrap_buff.skb = NULL;
	kingsun->rx_unwrap_buff.head = NULL;
	kingsun->rx_unwrap_buff.in_frame = FALSE;
	kingsun->rx_unwrap_buff.state = OUTSIDE_FRAME;
	kingsun->receiving = 0;

	/* Stop and remove instance of IrLAP */
	if (kingsun->irlap)
		FUNC0(kingsun->irlap);

	kingsun->irlap = NULL;

	return 0;
}