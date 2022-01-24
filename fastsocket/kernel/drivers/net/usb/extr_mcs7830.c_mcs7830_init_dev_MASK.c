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
struct usbnet {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev)
{
	int ret;
	int retry;

	/* Read MAC address from EEPROM */
	ret = -EINVAL;
	for (retry = 0; retry < 5 && ret; retry++)
		ret = FUNC2(dev);
	if (ret) {
		FUNC1(&dev->udev->dev, "Cannot read MAC address\n");
		goto out;
	}

	/* Set up PHY */
	ret = FUNC4(dev, 0);
	if (ret) {
		FUNC0(&dev->udev->dev, "Cannot set autoneg\n");
		goto out;
	}

	FUNC3(dev);
	ret = 0;
out:
	return ret;
}