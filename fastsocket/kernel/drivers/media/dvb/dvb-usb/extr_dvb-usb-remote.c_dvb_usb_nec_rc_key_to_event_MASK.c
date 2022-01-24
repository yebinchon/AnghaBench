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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct dvb_usb_rc_key {scalar_t__ event; } ;
struct TYPE_2__ {int rc_key_map_size; struct dvb_usb_rc_key* rc_key_map; } ;
struct dvb_usb_device {TYPE_1__ props; } ;

/* Variables and functions */
#define  DVB_USB_RC_NEC_EMPTY 130 
#define  DVB_USB_RC_NEC_KEY_PRESSED 129 
#define  DVB_USB_RC_NEC_KEY_REPEATED 128 
 int REMOTE_KEY_PRESSED ; 
 int REMOTE_KEY_REPEAT ; 
 int REMOTE_NO_KEY_PRESSED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct dvb_usb_rc_key*) ; 
 int FUNC2 (struct dvb_usb_rc_key*) ; 

int FUNC3(struct dvb_usb_device *d,
		u8 keybuf[5], u32 *event, int *state)
{
	int i;
	struct dvb_usb_rc_key *keymap = d->props.rc_key_map;
	*event = 0;
	*state = REMOTE_NO_KEY_PRESSED;
	switch (keybuf[0]) {
		case DVB_USB_RC_NEC_EMPTY:
			break;
		case DVB_USB_RC_NEC_KEY_PRESSED:
			if ((u8) ~keybuf[1] != keybuf[2] ||
				(u8) ~keybuf[3] != keybuf[4]) {
				FUNC0("remote control checksum failed.\n");
				break;
			}
			/* See if we can match the raw key code. */
			for (i = 0; i < d->props.rc_key_map_size; i++)
				if (FUNC1(&keymap[i]) == keybuf[1] &&
					FUNC2(&keymap[i]) == keybuf[3]) {
					*event = keymap[i].event;
					*state = REMOTE_KEY_PRESSED;
					return 0;
				}
			FUNC0("key mapping failed - no appropriate key found in keymapping\n");
			break;
		case DVB_USB_RC_NEC_KEY_REPEATED:
			*state = REMOTE_KEY_REPEAT;
			break;
		default:
			FUNC0("unknown type of remote status: %d\n",keybuf[0]);
			break;
	}
	return 0;
}