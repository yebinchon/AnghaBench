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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int dummy; } ;
struct rt2x00_ops {int /*<<< orphan*/  hw; } ;
struct rt2x00_dev {int /*<<< orphan*/  txstatus_timer; int /*<<< orphan*/  txdone_work; int /*<<< orphan*/  rxdone_work; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; int /*<<< orphan*/ * dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2X00_CHIP_INTF_USB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rt2x00_dev*) ; 
 int FUNC8 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2x00usb_work_rxdone ; 
 int /*<<< orphan*/  rt2x00usb_work_txdone ; 
 struct usb_device* FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct ieee80211_hw*) ; 

int FUNC14(struct usb_interface *usb_intf,
		    const struct rt2x00_ops *ops)
{
	struct usb_device *usb_dev = FUNC4(usb_intf);
	struct ieee80211_hw *hw;
	struct rt2x00_dev *rt2x00dev;
	int retval;

	usb_dev = FUNC10(usb_dev);
	FUNC12(usb_dev);

	hw = FUNC2(sizeof(struct rt2x00_dev), ops->hw);
	if (!hw) {
		FUNC5("Failed to allocate hardware\n");
		retval = -ENOMEM;
		goto exit_put_device;
	}

	FUNC13(usb_intf, hw);

	rt2x00dev = hw->priv;
	rt2x00dev->dev = &usb_intf->dev;
	rt2x00dev->ops = ops;
	rt2x00dev->hw = hw;

	FUNC6(rt2x00dev, RT2X00_CHIP_INTF_USB);

	FUNC0(&rt2x00dev->rxdone_work, rt2x00usb_work_rxdone);
	FUNC0(&rt2x00dev->txdone_work, rt2x00usb_work_txdone);
	FUNC1(&rt2x00dev->txstatus_timer, CLOCK_MONOTONIC,
		     HRTIMER_MODE_REL);

	retval = FUNC8(rt2x00dev);
	if (retval)
		goto exit_free_device;

	retval = FUNC7(rt2x00dev);
	if (retval)
		goto exit_free_reg;

	return 0;

exit_free_reg:
	FUNC9(rt2x00dev);

exit_free_device:
	FUNC3(hw);

exit_put_device:
	FUNC11(usb_dev);

	FUNC13(usb_intf, NULL);

	return retval;
}