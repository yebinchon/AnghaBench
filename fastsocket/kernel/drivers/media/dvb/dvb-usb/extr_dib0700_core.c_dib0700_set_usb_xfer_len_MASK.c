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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_usb_device {struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int EIO ; 
 int REQUEST_SET_USB_XFER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d, u16 nb_ts_packets)
{
	struct dib0700_state *st = d->priv;
	u8 b[3];
	int ret;

	if (st->fw_version >= 0x10201) {
		b[0] = REQUEST_SET_USB_XFER_LEN;
		b[1] = (nb_ts_packets >> 8) & 0xff;
		b[2] = nb_ts_packets & 0xff;

		FUNC0("set the USB xfer len to %i Ts packet\n", nb_ts_packets);

		ret = FUNC1(d, b, sizeof(b));
	} else {
		FUNC0("this firmware does not allow to change the USB xfer len\n");
		ret = -EIO;
	}

	return ret;
}