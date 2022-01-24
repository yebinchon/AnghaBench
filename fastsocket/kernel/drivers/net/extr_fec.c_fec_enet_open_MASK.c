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
struct fec_enet_private {int link; int opened; TYPE_1__* phy; scalar_t__ sequence_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  startup; int /*<<< orphan*/  config; int /*<<< orphan*/  ack_int; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  phy_cmd_config ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC3(dev);
	int ret;

	/* I should reset the ring buffers here, but I don't yet know
	 * a simple way to do that.
	 */

	ret = FUNC0(dev);
	if (ret)
		return ret;

	fep->sequence_done = 0;
	fep->link = 0;

	FUNC1(dev, 1);

	if (fep->phy) {
		FUNC2(dev, fep->phy->ack_int);
		FUNC2(dev, fep->phy->config);
		FUNC2(dev, phy_cmd_config);  /* display configuration */

		/* Poll until the PHY tells us its configuration
		 * (not link state).
		 * Request is initiated by mii_do_cmd above, but answer
		 * comes by interrupt.
		 * This should take about 25 usec per register at 2.5 MHz,
		 * and we read approximately 5 registers.
		 */
		while(!fep->sequence_done)
			FUNC5();

		FUNC2(dev, fep->phy->startup);
	}

	/* Set the initial link state to true. A lot of hardware
	 * based on this device does not implement a PHY interrupt,
	 * so we are never notified of link change.
	 */
	fep->link = 1;

	FUNC4(dev);
	fep->opened = 1;
	return 0;
}