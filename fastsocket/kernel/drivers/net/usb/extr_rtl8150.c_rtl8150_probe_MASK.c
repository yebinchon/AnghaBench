#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_10__ {int intr_interval; int /*<<< orphan*/  intr_buff; struct net_device* netdev; struct usb_device* udev; int /*<<< orphan*/  rx_pool_lock; int /*<<< orphan*/  tl; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTBUFSIZE ; 
 int /*<<< orphan*/  RTL8150_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct usb_device* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  rtl8150_netdev_ops ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  rx_fixup ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_interface*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC20(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC10(intf);
	rtl8150_t *dev;
	struct net_device *netdev;

	netdev = FUNC3(sizeof(rtl8150_t));
	if (!netdev) {
		FUNC5("Out of memory");
		return -ENOMEM;
	}

	dev = FUNC13(netdev);

	dev->intr_buff = FUNC12(INTBUFSIZE, GFP_KERNEL);
	if (!dev->intr_buff) {
		FUNC8(netdev);
		return -ENOMEM;
	}

	FUNC18(&dev->tl, rx_fixup, (unsigned long)dev);
	FUNC17(&dev->rx_pool_lock);
	
	dev->udev = udev;
	dev->netdev = netdev;
	netdev->netdev_ops = &rtl8150_netdev_ops;
	netdev->watchdog_timeo = RTL8150_TX_TIMEOUT;
	FUNC0(netdev, &ops);
	dev->intr_interval = 100;	/* 100ms */

	if (!FUNC2(dev)) {
		FUNC5("out of memory");
		goto out;
	}
	if (!FUNC15(dev)) {
		FUNC5("couldn't reset the device");
		goto out1;
	}
	FUNC6(dev);
	FUNC16(dev);
	
	FUNC19(intf, dev);
	FUNC1(netdev, &intf->dev);
	if (FUNC14(netdev) != 0) {
		FUNC5("couldn't register the device");
		goto out2;
	}

	FUNC4(&intf->dev, "%s: rtl8150 is detected\n", netdev->name);

	return 0;

out2:
	FUNC19(intf, NULL);
	FUNC9(dev);
out1:
	FUNC7(dev);
out:
	FUNC11(dev->intr_buff);
	FUNC8(netdev);
	return -EIO;
}