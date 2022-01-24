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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ems_usb {scalar_t__ open_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1000_MOD_RM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 struct ems_usb* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ems_usb*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct ems_usb *dev = FUNC3(netdev);

	/* Stop polling */
	FUNC5(dev);

	FUNC4(netdev);

	/* Set CAN controller to reset mode */
	if (FUNC2(dev, SJA1000_MOD_RM))
		FUNC1(netdev->dev.parent, "couldn't stop device");

	FUNC0(netdev);

	dev->open_time = 0;

	return 0;
}