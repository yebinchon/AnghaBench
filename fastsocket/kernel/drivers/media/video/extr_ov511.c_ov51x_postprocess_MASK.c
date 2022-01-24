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
struct usb_ov511 {int /*<<< orphan*/  maxheight; int /*<<< orphan*/  maxwidth; } ;
struct ov511_frame {int format; int /*<<< orphan*/  bytes_recvd; int /*<<< orphan*/  rawdata; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
#define  VIDEO_PALETTE_GREY 130 
#define  VIDEO_PALETTE_YUV420 129 
#define  VIDEO_PALETTE_YUV420P 128 
 scalar_t__ dumppix ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ov511*,struct ov511_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ov511*,struct ov511_frame*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  v4l1_plist ; 

__attribute__((used)) static void
FUNC8(struct usb_ov511 *ov, struct ov511_frame *frame)
{
	if (dumppix) {
		FUNC4(frame->data, 0,
			FUNC0(ov->maxwidth, ov->maxheight));
		FUNC1(4, "Dumping %d bytes", frame->bytes_recvd);
		FUNC3(frame->data, frame->rawdata, frame->bytes_recvd);
	} else {
		switch (frame->format) {
		case VIDEO_PALETTE_GREY:
			FUNC5(ov, frame);
			break;
		case VIDEO_PALETTE_YUV420:
		case VIDEO_PALETTE_YUV420P:
			FUNC6(ov, frame);
			break;
		default:
			FUNC2("Cannot convert data to %s",
			    FUNC7(v4l1_plist, frame->format));
		}
	}
}