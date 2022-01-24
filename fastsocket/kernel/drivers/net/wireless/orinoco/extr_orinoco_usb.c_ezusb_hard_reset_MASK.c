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
struct orinoco_private {struct ezusb_priv* card; } ;
struct ezusb_priv {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_TIMEOUT ; 
 int /*<<< orphan*/  EZUSB_REQUEST_TRIGER ; 
 int /*<<< orphan*/  EZUSB_REQUEST_TRIG_AC ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct ezusb_priv*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct orinoco_private *priv)
{
	struct ezusb_priv *upriv = priv->card;
	int retval = FUNC2(upriv, 1);

	if (retval < 0) {
		FUNC1("Failed to reset");
		return retval;
	}

	retval = FUNC2(upriv, 0);
	if (retval < 0) {
		FUNC1("Failed to unreset");
		return retval;
	}

	FUNC0("sending control message");
	retval = FUNC3(upriv->udev,
				 FUNC4(upriv->udev, 0),
				 EZUSB_REQUEST_TRIGER,
				 USB_TYPE_VENDOR | USB_RECIP_DEVICE |
				 USB_DIR_OUT, 0x0, 0x0, NULL, 0,
				 DEF_TIMEOUT);
	if (retval < 0) {
		FUNC1("EZUSB_REQUEST_TRIGER failed retval %d", retval);
		return retval;
	}
#if 0
	dbg("Sending EZUSB_REQUEST_TRIG_AC");
	retval = usb_control_msg(upriv->udev,
				 usb_sndctrlpipe(upriv->udev, 0),
				 EZUSB_REQUEST_TRIG_AC,
				 USB_TYPE_VENDOR | USB_RECIP_DEVICE |
				 USB_DIR_OUT, 0x00FA, 0x0, NULL, 0,
				 DEF_TIMEOUT);
	if (retval < 0) {
		err("EZUSB_REQUEST_TRIG_AC failed retval %d", retval);
		return retval;
	}
#endif

	return 0;
}