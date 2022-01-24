#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int protocol; } ;
struct TYPE_4__ {TYPE_1__ rc_core; } ;
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; scalar_t__ last_event; TYPE_2__ props; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;

/* Variables and functions */
#define  RC_TYPE_NEC 128 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  rc_request ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d)
{
	u8 key[4];
	u32 keycode;
	u8 toggle;
	int i;
	struct dib0700_state *st = d->priv;

	if (st->fw_version >= 0x10200) {
		/* For 1.20 firmware , We need to keep the RC polling
		   callback so we can reuse the input device setup in
		   dvb-usb-remote.c.  However, the actual work is being done
		   in the bulk URB completion handler. */
		return 0;
	}

	i = FUNC0(d, rc_request, 2, key, 4);
	if (i <= 0) {
		FUNC2("RC Query Failed");
		return -1;
	}

	/* losing half of KEY_0 events from Philipps rc5 remotes.. */
	if (key[0] == 0 && key[1] == 0 && key[2] == 0 && key[3] == 0)
		return 0;

	/* info("%d: %2X %2X %2X %2X",dvb_usb_dib0700_ir_proto,(int)key[3-2],(int)key[3-3],(int)key[3-1],(int)key[3]);  */

	FUNC1(d); /* reset ir sensor data to prevent false events */

	d->last_event = 0;
	switch (d->props.rc_core.protocol) {
	case RC_TYPE_NEC:
		/* NEC protocol sends repeat code as 0 0 0 FF */
		if ((key[3-2] == 0x00) && (key[3-3] == 0x00) &&
		    (key[3] == 0xff))
			keycode = d->last_event;
		else {
			keycode = key[3-2] << 8 | key[3-3];
			d->last_event = keycode;
		}

		FUNC3(d->rc_dev, keycode, 0);
		break;
	default:
		/* RC-5 protocol changes toggle bit on new keypress */
		keycode = key[3-2] << 8 | key[3-3];
		toggle = key[3-1];
		FUNC3(d->rc_dev, keycode, toggle);

		break;
	}
	return 0;
}