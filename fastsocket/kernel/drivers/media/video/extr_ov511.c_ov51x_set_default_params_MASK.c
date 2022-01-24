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
struct usb_ov511 {TYPE_1__* frame; int /*<<< orphan*/  maxheight; int /*<<< orphan*/  maxwidth; } ;
struct TYPE_2__ {scalar_t__ format; int /*<<< orphan*/  depth; scalar_t__ bytes_read; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int EINVAL ; 
 int OV511_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VIDEO_PALETTE_YUV420 ; 
 scalar_t__ force_palette ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  v4l1_plist ; 

__attribute__((used)) static int
FUNC4(struct usb_ov511 *ov)
{
	int i;

	/* Set default sizes in case IOCTL (VIDIOCMCAPTURE) is not used
	 * (using read() instead). */
	for (i = 0; i < OV511_NUMFRAMES; i++) {
		ov->frame[i].width = ov->maxwidth;
		ov->frame[i].height = ov->maxheight;
		ov->frame[i].bytes_read = 0;
		if (force_palette)
			ov->frame[i].format = force_palette;
		else
			ov->frame[i].format = VIDEO_PALETTE_YUV420;

		ov->frame[i].depth = FUNC1(ov->frame[i].format);
	}

	FUNC0(3, "%dx%d, %s", ov->maxwidth, ov->maxheight,
	       FUNC3(v4l1_plist, ov->frame[0].format));

	/* Initialize to max width/height, YUV420 or RGB24 (if supported) */
	if (FUNC2(ov, ov->maxwidth, ov->maxheight,
			   ov->frame[0].format, 0) < 0)
		return -EINVAL;

	return 0;
}