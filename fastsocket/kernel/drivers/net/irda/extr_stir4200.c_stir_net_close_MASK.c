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
struct TYPE_2__ {int /*<<< orphan*/  skb; } ;
struct stir_cb {int /*<<< orphan*/ * irlap; TYPE_1__ rx_buff; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  io_buf; int /*<<< orphan*/  fifo_status; int /*<<< orphan*/  thread; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct stir_cb* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct stir_cb *stir = FUNC4(netdev);

	/* Stop transmit processing */
	FUNC5(netdev);

	/* Kill transmit thread */
	FUNC3(stir->thread);
	FUNC1(stir->fifo_status);

	/* Mop up receive urb's */
	FUNC7(stir->rx_urb);
	
	FUNC1(stir->io_buf);
	FUNC6(stir->rx_urb);
	FUNC2(stir->rx_buff.skb);

	/* Stop and remove instance of IrLAP */
	if (stir->irlap)
		FUNC0(stir->irlap);

	stir->irlap = NULL;

	return 0;
}