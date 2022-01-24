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
struct net_device {int dummy; } ;
struct nes_vnic {int /*<<< orphan*/  nesibdev; scalar_t__ of_device_registered; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nes_vnic* FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *netdev)
{
	struct nes_vnic *nesvnic = FUNC3(netdev);

	/* make sure 'stop' method is called by Linux stack */
	/* nes_netdev_stop(netdev); */

	FUNC1(&nesvnic->list);

	if (nesvnic->of_device_registered) {
		FUNC2(nesvnic->nesibdev);
	}

	FUNC0(netdev);
}