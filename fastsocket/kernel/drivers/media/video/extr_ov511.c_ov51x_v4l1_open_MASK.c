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
struct video_device {int dummy; } ;
struct usb_ov511 {scalar_t__ led_policy; int /*<<< orphan*/  lock; scalar_t__ user; int /*<<< orphan*/  decomp_ops; scalar_t__ compress; TYPE_1__* frame; scalar_t__ sub_flag; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {scalar_t__ bytes_read; int /*<<< orphan*/  grabstate; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FRAME_UNUSED ; 
 scalar_t__ LED_AUTO ; 
 int OV511_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  dumppix ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ov511*) ; 
 int FUNC5 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ov511*,int) ; 
 int FUNC7 (struct usb_ov511*) ; 
 int FUNC8 (struct usb_ov511*) ; 
 struct video_device* FUNC9 (struct file*) ; 
 struct usb_ov511* FUNC10 (struct video_device*) ; 

__attribute__((used)) static int
FUNC11(struct file *file)
{
	struct video_device *vdev = FUNC9(file);
	struct usb_ov511 *ov = FUNC10(vdev);
	int err, i;

	FUNC0(4, "opening");

	FUNC1(&ov->lock);

	err = -EBUSY;
	if (ov->user)
		goto out;

	ov->sub_flag = 0;

	/* In case app doesn't set them... */
	err = FUNC7(ov);
	if (err < 0)
		goto out;

	/* Make sure frames are reset */
	for (i = 0; i < OV511_NUMFRAMES; i++) {
		ov->frame[i].grabstate = FRAME_UNUSED;
		ov->frame[i].bytes_read = 0;
	}

	/* If compression is on, make sure now that a
	 * decompressor can be loaded */
	if (ov->compress && !ov->decomp_ops) {
		err = FUNC8(ov);
		if (err && !dumppix)
			goto out;
	}

	err = FUNC3(ov);
	if (err < 0)
		goto out;

	err = FUNC5(ov);
	if (err) {
		FUNC4(ov);
		goto out;
	}

	ov->user++;
	file->private_data = vdev;

	if (ov->led_policy == LED_AUTO)
		FUNC6(ov, 1);

out:
	FUNC2(&ov->lock);
	return err;
}