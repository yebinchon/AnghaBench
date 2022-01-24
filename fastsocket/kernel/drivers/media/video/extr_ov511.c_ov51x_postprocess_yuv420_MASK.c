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
struct usb_ov511 {scalar_t__ sensor; } ;
struct ov511_frame {int rawheight; int /*<<< orphan*/  data; int /*<<< orphan*/  rawdata; scalar_t__ compressed; int /*<<< orphan*/  tempdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAWFMT_YUV420 ; 
 scalar_t__ SEN_SAA7111A ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ov511*,struct ov511_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ov511_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ov511_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct usb_ov511 *ov, struct ov511_frame *frame)
{
	/* Deinterlace frame, if necessary */
	if (ov->sensor == SEN_SAA7111A && frame->rawheight >= 480) {
		if (frame->compressed)
			FUNC0(ov, frame, frame->rawdata, frame->tempdata);
		else
			FUNC2(frame, frame->rawdata,
					     frame->tempdata);

		FUNC1(frame, RAWFMT_YUV420, frame->tempdata,
			    frame->data);
	} else {
		if (frame->compressed)
			FUNC0(ov, frame, frame->rawdata, frame->data);
		else
			FUNC2(frame, frame->rawdata,
					     frame->data);
	}
}