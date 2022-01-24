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
struct usb_interface {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 struct ieee80211_hw* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

void FUNC7(struct usb_interface *usb_intf)
{
	struct ieee80211_hw *hw = FUNC4(usb_intf);
	struct rt2x00_dev *rt2x00dev = hw->priv;

	/*
	 * Free all allocated data.
	 */
	FUNC2(rt2x00dev);
	FUNC3(rt2x00dev);
	FUNC0(hw);

	/*
	 * Free the USB device data.
	 */
	FUNC6(usb_intf, NULL);
	FUNC5(FUNC1(usb_intf));
}