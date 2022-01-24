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
struct ems_usb {int /*<<< orphan*/  open_time; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SJA1000_MOD_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 struct ems_usb* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, enum can_mode mode)
{
	struct ems_usb *dev = FUNC2(netdev);

	if (!dev->open_time)
		return -EINVAL;

	switch (mode) {
	case CAN_MODE_START:
		if (FUNC1(dev, SJA1000_MOD_NORMAL))
			FUNC0(netdev->dev.parent, "couldn't start device");

		if (FUNC3(netdev))
			FUNC4(netdev);
		break;

	default:
		return -EOPNOTSUPP;
	}

	return 0;
}