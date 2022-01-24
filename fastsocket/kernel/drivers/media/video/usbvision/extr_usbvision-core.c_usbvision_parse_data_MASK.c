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
struct usbvision_frame {scalar_t__ scanstate; long scanlength; int /*<<< orphan*/  grabstate; int /*<<< orphan*/  frame; int /*<<< orphan*/  sequence; int /*<<< orphan*/  timestamp; } ;
struct usb_usbvision {scalar_t__ isoc_mode; int /*<<< orphan*/  wait_frame; int /*<<< orphan*/  frame_num; int /*<<< orphan*/  queue_lock; struct usbvision_frame* cur_frame; int /*<<< orphan*/  outqueue; } ;
typedef  enum parse_state { ____Placeholder_parse_state } parse_state ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_PARSE ; 
 scalar_t__ ISOC_MODE_COMPRESS ; 
 scalar_t__ ISOC_MODE_YUV420 ; 
 scalar_t__ ISOC_MODE_YUV422 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  frame_state_done ; 
 int /*<<< orphan*/  frame_state_grabbing ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int parse_state_continue ; 
 int parse_state_next_frame ; 
 int parse_state_out ; 
 scalar_t__ scan_state_lines ; 
 scalar_t__ scan_state_scanning ; 
 scalar_t__ FUNC3 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct usb_usbvision*) ; 
 int FUNC7 (struct usb_usbvision*,long*) ; 
 int FUNC8 (struct usb_usbvision*,long*) ; 
 int FUNC9 (struct usb_usbvision*,long*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct usb_usbvision *usbvision)
{
	struct usbvision_frame *frame;
	enum parse_state newstate;
	long copylen = 0;
	unsigned long lock_flags;

	frame = usbvision->cur_frame;

	FUNC0(DBG_PARSE, "parsing len=%d\n", FUNC3(usbvision));

	while (1) {
		newstate = parse_state_out;
		if (FUNC3(usbvision)) {
			if (frame->scanstate == scan_state_scanning) {
				newstate = FUNC6(usbvision);
			} else if (frame->scanstate == scan_state_lines) {
				if (usbvision->isoc_mode == ISOC_MODE_YUV420)
					newstate = FUNC8(usbvision, &copylen);
				else if (usbvision->isoc_mode == ISOC_MODE_YUV422)
					newstate = FUNC9(usbvision, &copylen);
				else if (usbvision->isoc_mode == ISOC_MODE_COMPRESS)
					newstate = FUNC7(usbvision, &copylen);
			}
		}
		if (newstate == parse_state_continue)
			continue;
		if ((newstate == parse_state_next_frame) || (newstate == parse_state_out))
			break;
		return;	/* parse_state_end_parse */
	}

	if (newstate == parse_state_next_frame) {
		frame->grabstate = frame_state_done;
		FUNC1(&(frame->timestamp));
		frame->sequence = usbvision->frame_num;

		FUNC4(&usbvision->queue_lock, lock_flags);
		FUNC2(&(frame->frame), &usbvision->outqueue);
		usbvision->cur_frame = NULL;
		FUNC5(&usbvision->queue_lock, lock_flags);

		usbvision->frame_num++;

		/* This will cause the process to request another frame. */
		if (FUNC10(&usbvision->wait_frame)) {
			FUNC0(DBG_PARSE, "Wake up !");
			FUNC11(&usbvision->wait_frame);
		}
	} else {
		frame->grabstate = frame_state_grabbing;
	}

	/* Update the frame's uncompressed length. */
	frame->scanlength += copylen;
}