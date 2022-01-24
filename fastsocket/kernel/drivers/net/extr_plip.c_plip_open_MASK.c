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
struct TYPE_4__ {int /*<<< orphan*/ * skb; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  skb; int /*<<< orphan*/  state; } ;
struct net_local {int port_owner; scalar_t__ is_deferred; int /*<<< orphan*/  connection; TYPE_2__ snd_data; TYPE_1__ rcv_data; int /*<<< orphan*/  timer; int /*<<< orphan*/  kill_timer; scalar_t__ should_relinquish; int /*<<< orphan*/  pardev; } ;
struct net_device {int irq; scalar_t__ dev_addr; struct in_device* ip_ptr; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PLIP_CN_NONE ; 
 int /*<<< orphan*/  PLIP_PK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 struct net_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 

__attribute__((used)) static int
FUNC8(struct net_device *dev)
{
	struct net_local *nl = FUNC3(dev);
	struct in_device *in_dev;

	/* Grab the port */
	if (!nl->port_owner) {
		if (FUNC5(nl->pardev)) return -EAGAIN;
		nl->port_owner = 1;
	}

	nl->should_relinquish = 0;

	/* Clear the data port. */
	FUNC7 (dev, 0x00);

	/* Enable rx interrupt. */
	FUNC1 (dev);
	if (dev->irq == -1)
	{
		FUNC0 (&nl->kill_timer, 0);
		FUNC6(&nl->timer, 1);
	}

	/* Initialize the state machine. */
	nl->rcv_data.state = nl->snd_data.state = PLIP_PK_DONE;
	nl->rcv_data.skb = *(nl->snd_data.skb = NULL);
	nl->connection = PLIP_CN_NONE;
	nl->is_deferred = 0;

	/* Fill in the MAC-level header.
	   We used to abuse dev->broadcast to store the point-to-point
	   MAC address, but we no longer do it. Instead, we fetch the
	   interface address whenever it is needed, which is cheap enough
	   because we use the hh_cache. Actually, abusing dev->broadcast
	   didn't work, because when using plip_open the point-to-point
	   address isn't yet known.
	   PLIP doesn't have a real MAC address, but we need it to be
	   DOS compatible, and to properly support taps (otherwise,
	   when the device address isn't identical to the address of a
	   received frame, the kernel incorrectly drops it).             */

	if ((in_dev=dev->ip_ptr) != NULL) {
		/* Any address will do - we take the first. We already
		   have the first two bytes filled with 0xfc, from
		   plip_init_dev(). */
		struct in_ifaddr *ifa=in_dev->ifa_list;
		if (ifa != NULL) {
			FUNC2(dev->dev_addr+2, &ifa->ifa_local, 4);
		}
	}

	FUNC4 (dev);

	return 0;
}