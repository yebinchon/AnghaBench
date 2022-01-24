#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;
struct c2_port {int /*<<< orphan*/  dma; int /*<<< orphan*/  mem; int /*<<< orphan*/  mem_size; TYPE_2__ tx_ring; TYPE_1__ rx_ring; struct c2_dev* c2dev; } ;
struct c2_dev {int /*<<< orphan*/  pcidev; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ C2_IDIS ; 
 scalar_t__ C2_NIMR0 ; 
 int /*<<< orphan*/  FUNC0 (struct c2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct c2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct c2_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct c2_port* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct c2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct c2_port *c2_port = FUNC5(netdev);
	struct c2_dev *c2dev = c2_port->c2dev;

	if (FUNC6(c2_port))
		FUNC9("%s: disabling interface\n",
			netdev->name);

	/* Wait for all the queued packets to get sent */
	FUNC3(netdev);

	/* Disable network packets */
	FUNC7(netdev);

	/* Disable IRQs by clearing the interrupt mask */
	FUNC10(1, c2dev->regs + C2_IDIS);
	FUNC10(0, c2dev->regs + C2_NIMR0);

	/* missing: Stop transmitter */

	/* missing: Stop receiver */

	/* Reset the adapter, ensures the driver is in sync with the RXP */
	FUNC0(c2_port);

	/* missing: Turn off LEDs here */

	/* Free all buffers in the host descriptor rings */
	FUNC2(c2_port);
	FUNC1(c2_port);

	/* Free the host descriptor rings */
	FUNC4(c2_port->rx_ring.start);
	FUNC4(c2_port->tx_ring.start);
	FUNC8(c2dev->pcidev, c2_port->mem_size, c2_port->mem,
			    c2_port->dma);

	return 0;
}