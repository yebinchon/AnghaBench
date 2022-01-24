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
typedef  scalar_t__ u32 ;
struct dvb_usb_device {scalar_t__ last_event; struct cinergyt2_state* priv; } ;
struct cinergyt2_state {scalar_t__ rc_counter; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int CINERGYT2_EP1_GET_RC_EVENTS ; 
 scalar_t__ RC_REPEAT_DELAY ; 
 int REMOTE_KEY_REPEAT ; 
 int REMOTE_NO_KEY_PRESSED ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int*,scalar_t__*,int*) ; 
 scalar_t__* repeatable_keys ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d, u32 *event, int *state)
{
	struct cinergyt2_state *st = d->priv;
	u8 key[5] = {0, 0, 0, 0, 0}, cmd = CINERGYT2_EP1_GET_RC_EVENTS;
	int i;

	*state = REMOTE_NO_KEY_PRESSED;

	FUNC2(d, &cmd, 1, key, sizeof(key), 0);
	if (key[4] == 0xff) {
		/* key repeat */
		st->rc_counter++;
		if (st->rc_counter > RC_REPEAT_DELAY) {
			for (i = 0; i < FUNC0(repeatable_keys); i++) {
				if (d->last_event == repeatable_keys[i]) {
					*state = REMOTE_KEY_REPEAT;
					*event = d->last_event;
					FUNC1("repeat key, event %x\n",
						   *event);
					return 0;
				}
			}
			FUNC1("repeated key (non repeatable)\n");
		}
		return 0;
	}

	/* hack to pass checksum on the custom field */
	key[2] = ~key[1];
	FUNC3(d, key, event, state);
	if (key[0] != 0) {
		if (*event != d->last_event)
			st->rc_counter = 0;

		FUNC1("key: %x %x %x %x %x\n",
		       key[0], key[1], key[2], key[3], key[4]);
	}
	return 0;
}