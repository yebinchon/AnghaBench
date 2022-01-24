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
struct video_device {int dummy; } ;
struct usb_ov511 {scalar_t__ led_policy; int /*<<< orphan*/  cbuf_lock; struct usb_ov511* cbuf; scalar_t__ dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  user; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 scalar_t__ LED_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ov511*) ; 
 struct usb_ov511* FUNC7 (struct video_device*) ; 

__attribute__((used)) static int
FUNC8(struct file *file)
{
	struct video_device *vdev = file->private_data;
	struct usb_ov511 *ov = FUNC7(vdev);

	FUNC0(4, "ov511_close");

	FUNC2(&ov->lock);

	ov->user--;
	FUNC6(ov);

	if (ov->led_policy == LED_AUTO)
		FUNC5(ov, 0);

	if (ov->dev)
		FUNC4(ov);

	FUNC3(&ov->lock);

	/* Device unplugged while open. Only a minimum of unregistration is done
	 * here; the disconnect callback already did the rest. */
	if (!ov->dev) {
		FUNC2(&ov->cbuf_lock);
		FUNC1(ov->cbuf);
		ov->cbuf = NULL;
		FUNC3(&ov->cbuf_lock);

		FUNC4(ov);
		FUNC1(ov);
		ov = NULL;
	}

	file->private_data = NULL;
	return 0;
}