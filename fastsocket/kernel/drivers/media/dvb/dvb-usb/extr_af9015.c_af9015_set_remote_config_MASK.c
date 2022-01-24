#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct TYPE_5__ {void* rc_codes; } ;
struct dvb_usb_device_properties {TYPE_2__ rc_core; } ;
typedef  int /*<<< orphan*/  manufacturer ;
struct TYPE_6__ {int eeprom_sum; } ;

/* Variables and functions */
 int AF9015_REMOTE_MSI_DIGIVOX_MINI_II_V3 ; 
 void* RC_MAP_EMPTY ; 
 int USB_VID_AFATECH ; 
 TYPE_3__ af9015_config ; 
 int /*<<< orphan*/  af9015_rc_setup_hashes ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  af9015_rc_setup_modparam ; 
 int /*<<< orphan*/  af9015_rc_setup_usbids ; 
 int dvb_usb_af9015_remote ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct usb_device *udev,
		struct dvb_usb_device_properties *props)
{
	u16 vid = FUNC1(udev->descriptor.idVendor);
	u16 pid = FUNC1(udev->descriptor.idProduct);

	/* try to load remote based module param */
	props->rc_core.rc_codes = FUNC0(
		dvb_usb_af9015_remote, af9015_rc_setup_modparam);

	/* try to load remote based eeprom hash */
	if (!props->rc_core.rc_codes)
		props->rc_core.rc_codes = FUNC0(
			af9015_config.eeprom_sum, af9015_rc_setup_hashes);

	/* try to load remote based USB ID */
	if (!props->rc_core.rc_codes)
		props->rc_core.rc_codes = FUNC0(
			(vid << 16) + pid, af9015_rc_setup_usbids);

	/* try to load remote based USB iManufacturer string */
	if (!props->rc_core.rc_codes && vid == USB_VID_AFATECH) {
		/* Check USB manufacturer and product strings and try
		   to determine correct remote in case of chip vendor
		   reference IDs are used.
		   DO NOT ADD ANYTHING NEW HERE. Use hashes instead. */
		char manufacturer[10];
		FUNC2(manufacturer, 0, sizeof(manufacturer));
		FUNC4(udev, udev->descriptor.iManufacturer,
			manufacturer, sizeof(manufacturer));
		if (!FUNC3("MSI", manufacturer)) {
			/* iManufacturer 1 MSI
			   iProduct      2 MSI K-VOX */
			props->rc_core.rc_codes = FUNC0(
				AF9015_REMOTE_MSI_DIGIVOX_MINI_II_V3,
				af9015_rc_setup_modparam);
		}
	}

	/* finally load "empty" just for leaving IR receiver enabled */
	if (!props->rc_core.rc_codes)
		props->rc_core.rc_codes = RC_MAP_EMPTY;

	return;
}