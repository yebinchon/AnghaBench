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
struct ems_usb {int /*<<< orphan*/  open_time; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SJA1000_MOD_RM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ems_usb*) ; 
 int FUNC3 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ems_usb* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct ems_usb *dev = FUNC4(netdev);
	int err;

	err = FUNC3(dev, SJA1000_MOD_RM);
	if (err)
		return err;

	/* common open */
	err = FUNC7(netdev);
	if (err)
		return err;

	/* finally start device */
	err = FUNC2(dev);
	if (err) {
		if (err == -ENODEV)
			FUNC5(dev->netdev);

		FUNC1(netdev->dev.parent, "couldn't start device: %d\n",
			 err);

		FUNC0(netdev);

		return err;
	}

	dev->open_time = jiffies;

	FUNC6(netdev);

	return 0;
}