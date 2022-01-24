#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hso_serial {int num_rx_urbs; TYPE_2__* parent; scalar_t__ tiocmget; TYPE_6__* shared_int; int /*<<< orphan*/ * rx_urb; int /*<<< orphan*/  rx_data_length; int /*<<< orphan*/ * rx_data; TYPE_1__* in_endp; } ;
struct hso_device {int /*<<< orphan*/  usb; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_10__ {int /*<<< orphan*/  shared_int_lock; int /*<<< orphan*/  use_count; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int port_spec; TYPE_3__* usb; } ;
struct TYPE_7__ {int bEndpointAddress; } ;

/* Variables and functions */
 int ENODEV ; 
 int HSO_INTF_MUX ; 
 struct hso_serial* FUNC0 (struct hso_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hso_std_serial_read_bulk_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hso_serial*,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hso_device *hso_dev, gfp_t flags)
{
	int i, result = 0;
	struct hso_serial *serial = FUNC0(hso_dev);

	if (!serial)
		return -ENODEV;

	/* If it is not the MUX port fill in and submit a bulk urb (already
	 * allocated in hso_serial_start) */
	if (!(serial->parent->port_spec & HSO_INTF_MUX)) {
		for (i = 0; i < serial->num_rx_urbs; i++) {
			FUNC6(serial->rx_urb[i],
					  serial->parent->usb,
					  FUNC7(serial->parent->usb,
							  serial->in_endp->
							  bEndpointAddress &
							  0x7F),
					  serial->rx_data[i],
					  serial->rx_data_length,
					  hso_std_serial_read_bulk_callback,
					  serial);
			result = FUNC8(serial->rx_urb[i], flags);
			if (result) {
				FUNC1(&serial->parent->usb->dev,
					 "Failed to submit urb - res %d\n",
					 result);
				break;
			}
		}
	} else {
		FUNC3(&serial->shared_int->shared_int_lock);
		if (!serial->shared_int->use_count) {
			result =
			    FUNC2(serial->shared_int,
						    hso_dev->usb, flags);
		}
		serial->shared_int->use_count++;
		FUNC4(&serial->shared_int->shared_int_lock);
	}
	if (serial->tiocmget)
		FUNC5(serial,
				    serial->tiocmget,
				    serial->parent->usb);
	return result;
}