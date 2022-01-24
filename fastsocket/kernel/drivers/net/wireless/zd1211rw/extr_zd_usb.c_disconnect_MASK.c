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
struct zd_usb {int dummy; } ;
struct TYPE_2__ {struct zd_usb usb; } ;
struct zd_mac {TYPE_1__ chip; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct zd_mac* FUNC6 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC10 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC11 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC12 (struct zd_usb*) ; 

__attribute__((used)) static void FUNC13(struct usb_interface *intf)
{
	struct ieee80211_hw *hw = FUNC7(intf);
	struct zd_mac *mac;
	struct zd_usb *usb;

	/* Either something really bad happened, or we're just dealing with
	 * a DEVICE_INSTALLER. */
	if (hw == NULL)
		return;

	mac = FUNC6(hw);
	usb = &mac->chip.usb;

	FUNC1(FUNC9(usb), "\n");

	FUNC3(hw);

	/* Just in case something has gone wrong! */
	FUNC12(usb);
	FUNC11(usb);
	FUNC10(usb);

	/* If the disconnect has been caused by a removal of the
	 * driver module, the reset allows reloading of the driver. If the
	 * reset will not be executed here, the upload of the firmware in the
	 * probe function caused by the reloading of the driver will fail.
	 */
	FUNC5(FUNC4(intf));

	FUNC8(mac);
	FUNC2(hw);
	FUNC0(&intf->dev, "disconnected\n");
}