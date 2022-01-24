#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zd_usb {int is_zd1211b; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int driver_info; } ;
struct usb_device {int speed; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct TYPE_4__ {struct zd_usb usb; } ;
struct TYPE_5__ {TYPE_1__ chip; } ;

/* Variables and functions */
 int DEVICE_INSTALLER ; 
 int DEVICE_ZD1211B ; 
 int ENODEV ; 
 int ENOMEM ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC11 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf, const struct usb_device_id *id)
{
	int r;
	struct usb_device *udev = FUNC6(intf);
	struct zd_usb *usb;
	struct ieee80211_hw *hw = NULL;

	FUNC7(udev);

	if (id->driver_info & DEVICE_INSTALLER)
		return FUNC3(intf);

	switch (udev->speed) {
	case USB_SPEED_LOW:
	case USB_SPEED_FULL:
	case USB_SPEED_HIGH:
		break;
	default:
		FUNC0(&intf->dev, "Unknown USB speed\n");
		r = -ENODEV;
		goto error;
	}

	r = FUNC8(udev);
	if (r) {
		FUNC1(&intf->dev,
			"couldn't reset usb device. Error number %d\n", r);
		goto error;
	}

	hw = FUNC11(intf);
	if (hw == NULL) {
		r = -ENOMEM;
		goto error;
	}

	usb = &FUNC10(hw)->chip.usb;
	usb->is_zd1211b = (id->driver_info == DEVICE_ZD1211B) != 0;

	r = FUNC13(hw);
	if (r) {
		FUNC0(&intf->dev,
		         "couldn't initialize mac. Error number %d\n", r);
		goto error;
	}

	r = FUNC5(hw);
	if (r) {
		FUNC0(&intf->dev,
			 "couldn't register device. Error number %d\n", r);
		goto error;
	}

	FUNC0(&intf->dev, "successful\n");
	FUNC2(&intf->dev, "%s\n", FUNC9(hw->wiphy));
	return 0;
error:
	FUNC8(FUNC6(intf));
	if (hw) {
		FUNC12(FUNC10(hw));
		FUNC4(hw);
	}
	return r;
}