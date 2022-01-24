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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct hso_tiocmget {void* endp; int /*<<< orphan*/  waitq; int /*<<< orphan*/  mutex; scalar_t__ urb; } ;
struct TYPE_2__ {struct hso_serial* dev_serial; } ;
struct hso_serial {int /*<<< orphan*/  minor; int /*<<< orphan*/  write_data; void* out_endp; void* in_endp; struct hso_tiocmget* tiocmget; TYPE_1__ port_data; struct hso_serial* parent; } ;
struct hso_device {int /*<<< orphan*/  minor; int /*<<< orphan*/  write_data; void* out_endp; void* in_endp; struct hso_tiocmget* tiocmget; TYPE_1__ port_data; struct hso_device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_URB_RX_SIZE ; 
 int /*<<< orphan*/  BULK_URB_TX_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HSO_PORT_MASK ; 
 int HSO_PORT_MODEM ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_BULK ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hso_serial* FUNC1 (struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hso_serial*) ; 
 void* FUNC3 (struct usb_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hso_serial*) ; 
 scalar_t__ FUNC5 (struct hso_serial*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hso_serial*) ; 
 int /*<<< orphan*/  hso_std_serial_write_data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hso_serial*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct hso_serial*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hso_device *FUNC13(
			struct usb_interface *interface, int port)
{
	struct hso_device *hso_dev;
	struct hso_serial *serial;
	int num_urbs;
	struct hso_tiocmget *tiocmget;

	hso_dev = FUNC1(interface, port);
	if (!hso_dev)
		return NULL;

	serial = FUNC9(sizeof(*serial), GFP_KERNEL);
	if (!serial)
		goto exit;

	serial->parent = hso_dev;
	hso_dev->port_data.dev_serial = serial;

	if ((port & HSO_PORT_MASK) == HSO_PORT_MODEM) {
		num_urbs = 2;
		serial->tiocmget = FUNC9(sizeof(struct hso_tiocmget),
					   GFP_KERNEL);
		/* it isn't going to break our heart if serial->tiocmget
		 *  allocation fails don't bother checking this.
		 */
		if (serial->tiocmget) {
			tiocmget = serial->tiocmget;
			tiocmget->urb = FUNC12(0, GFP_KERNEL);
			if (tiocmget->urb) {
				FUNC10(&tiocmget->mutex);
				FUNC7(&tiocmget->waitq);
				tiocmget->endp = FUNC3(
					interface,
					USB_ENDPOINT_XFER_INT,
					USB_DIR_IN);
			} else
				FUNC2(serial);
		}
	}
	else
		num_urbs = 1;

	if (FUNC5(serial, num_urbs, BULK_URB_RX_SIZE,
				     BULK_URB_TX_SIZE))
		goto exit;

	serial->in_endp = FUNC3(interface, USB_ENDPOINT_XFER_BULK,
				     USB_DIR_IN);
	if (!serial->in_endp) {
		FUNC0(&interface->dev, "Failed to find BULK IN ep\n");
		goto exit2;
	}

	if (!
	    (serial->out_endp =
	     FUNC3(interface, USB_ENDPOINT_XFER_BULK, USB_DIR_OUT))) {
		FUNC0(&interface->dev, "Failed to find BULK IN ep\n");
		goto exit2;
	}

	serial->write_data = hso_std_serial_write_data;

	/* and record this serial */
	FUNC11(serial->minor, serial);

	/* setup the proc dirs and files if needed */
	FUNC4(hso_dev);

	/* done, return it */
	return hso_dev;

exit2:
	FUNC6(serial);
exit:
	FUNC2(serial);
	FUNC8(serial);
	FUNC8(hso_dev);
	return NULL;
}