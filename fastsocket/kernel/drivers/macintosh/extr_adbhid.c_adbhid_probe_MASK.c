#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct adb_request {int reply_len; int* reply; } ;
struct TYPE_5__ {int nids; int* id; } ;

/* Variables and functions */
 int ADBMOUSE_EXTENDED ; 
 int ADBMOUSE_MACALLY2 ; 
 int ADBMOUSE_MICROSPEED ; 
 int ADBMOUSE_MS_A3 ; 
 int ADBMOUSE_STANDARD_100 ; 
 int ADBMOUSE_STANDARD_200 ; 
 int ADBMOUSE_TRACKBALL ; 
 int ADBMOUSE_TRACKBALLPRO ; 
 int ADBMOUSE_TRACKPAD ; 
 int ADBMOUSE_TURBOMOUSE5 ; 
 int ADBREQ_REPLY ; 
 int ADBREQ_SYNC ; 
 int /*<<< orphan*/  ADB_KEYBOARD ; 
 int /*<<< orphan*/  ADB_MISC ; 
 int /*<<< orphan*/  ADB_MOUSE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYB_LEDREG ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adb_request*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  adbhid_buttons_input ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int) ; 
 int /*<<< orphan*/  adbhid_keyboard_input ; 
 int /*<<< orphan*/  adbhid_mouse_input ; 
 TYPE_1__ buttons_ids ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 TYPE_1__ keyboard_ids ; 
 TYPE_1__ mouse_ids ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct adb_request req;
	int i, default_id, org_handler_id, cur_handler_id;
	u16 reg = 0;

	FUNC3(ADB_MOUSE, 0, &mouse_ids, adbhid_mouse_input);
	FUNC3(ADB_KEYBOARD, 0, &keyboard_ids, adbhid_keyboard_input);
	FUNC3(ADB_MISC, 0, &buttons_ids, adbhid_buttons_input);

	for (i = 0; i < keyboard_ids.nids; i++) {
		int id = keyboard_ids.id[i];

		FUNC2(id, &default_id, &org_handler_id);

		/* turn off all leds */
		FUNC4(&req, NULL, ADBREQ_SYNC, 3,
			    FUNC1(id, KEYB_LEDREG), 0xff, 0xff);

		/* Enable full feature set of the keyboard
		   ->get it to send separate codes for left and right shift,
		   control, option keys */
#if 0		/* handler 5 doesn't send separate codes for R modifiers */
		if (adb_try_handler_change(id, 5))
			printk("ADB keyboard at %d, handler set to 5\n", id);
		else
#endif
		if (FUNC5(id, 3))
			FUNC13("ADB keyboard at %d, handler set to 3\n", id);
		else
			FUNC13("ADB keyboard at %d, handler 1\n", id);

		FUNC2(id, &default_id, &cur_handler_id);
		reg |= FUNC7(id, default_id, org_handler_id,
					       cur_handler_id, 0);
	}

	for (i = 0; i < buttons_ids.nids; i++) {
		int id = buttons_ids.id[i];

		FUNC2(id, &default_id, &org_handler_id);
		reg |= FUNC7(id, default_id, org_handler_id,
					       org_handler_id, 0);
	}

	/* Try to switch all mice to handler 4, or 2 for three-button
	   mode and full resolution. */
	for (i = 0; i < mouse_ids.nids; i++) {
		int id = mouse_ids.id[i];
		int mouse_kind;

		FUNC2(id, &default_id, &org_handler_id);

		if (FUNC5(id, 4)) {
			FUNC13("ADB mouse at %d, handler set to 4", id);
			mouse_kind = ADBMOUSE_EXTENDED;
		}
		else if (FUNC5(id, 0x2F)) {
			FUNC13("ADB mouse at %d, handler set to 0x2F", id);
			mouse_kind = ADBMOUSE_MICROSPEED;
		}
		else if (FUNC5(id, 0x42)) {
			FUNC13("ADB mouse at %d, handler set to 0x42", id);
			mouse_kind = ADBMOUSE_TRACKBALLPRO;
		}
		else if (FUNC5(id, 0x66)) {
			FUNC13("ADB mouse at %d, handler set to 0x66", id);
			mouse_kind = ADBMOUSE_MICROSPEED;
		}
		else if (FUNC5(id, 0x5F)) {
			FUNC13("ADB mouse at %d, handler set to 0x5F", id);
			mouse_kind = ADBMOUSE_MICROSPEED;
		}
		else if (FUNC5(id, 3)) {
			FUNC13("ADB mouse at %d, handler set to 3", id);
			mouse_kind = ADBMOUSE_MS_A3;
		}
		else if (FUNC5(id, 2)) {
			FUNC13("ADB mouse at %d, handler set to 2", id);
			mouse_kind = ADBMOUSE_STANDARD_200;
		}
		else {
			FUNC13("ADB mouse at %d, handler 1", id);
			mouse_kind = ADBMOUSE_STANDARD_100;
		}

		if ((mouse_kind == ADBMOUSE_TRACKBALLPRO)
		    || (mouse_kind == ADBMOUSE_MICROSPEED)) {
			FUNC8(id);
		} else if (mouse_kind == ADBMOUSE_MS_A3) {
			FUNC9(id);
		} else if (mouse_kind ==  ADBMOUSE_EXTENDED) {
			/*
			 * Register 1 is usually used for device
			 * identification.  Here, we try to identify
			 * a known device and call the appropriate
			 * init function.
			 */
			FUNC4(&req, NULL, ADBREQ_SYNC | ADBREQ_REPLY, 1,
				    FUNC0(id, 1));

			if ((req.reply_len) &&
			    (req.reply[1] == 0x9a) && ((req.reply[2] == 0x21)
			    	|| (req.reply[2] == 0x20))) {
				mouse_kind = ADBMOUSE_TRACKBALL;
				FUNC10(id);
			}
			else if ((req.reply_len >= 4) &&
			    (req.reply[1] == 0x74) && (req.reply[2] == 0x70) &&
			    (req.reply[3] == 0x61) && (req.reply[4] == 0x64)) {
				mouse_kind = ADBMOUSE_TRACKPAD;
				FUNC11(id);
			}
			else if ((req.reply_len >= 4) &&
			    (req.reply[1] == 0x4b) && (req.reply[2] == 0x4d) &&
			    (req.reply[3] == 0x4c) && (req.reply[4] == 0x31)) {
				mouse_kind = ADBMOUSE_TURBOMOUSE5;
				FUNC12(id);
			}
			else if ((req.reply_len == 9) &&
			    (req.reply[1] == 0x4b) && (req.reply[2] == 0x4f) &&
			    (req.reply[3] == 0x49) && (req.reply[4] == 0x54)) {
				if (FUNC5(id, 0x42)) {
					FUNC13("\nADB MacAlly 2-button mouse at %d, handler set to 0x42", id);
					mouse_kind = ADBMOUSE_MACALLY2;
				}
			}
		}
		FUNC13("\n");

		FUNC2(id, &default_id, &cur_handler_id);
		reg |= FUNC7(id, default_id, org_handler_id,
					       cur_handler_id, mouse_kind);
	}
	FUNC6(reg);
}