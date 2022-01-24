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
struct vicam_camera {int open_count; int /*<<< orphan*/  cam_lock; struct usb_device* udev; struct vicam_camera* cntrlbuf; int /*<<< orphan*/  framebuf; struct vicam_camera* raw_image; } ;
struct usb_device {int dummy; } ;
struct file {struct vicam_camera* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int VICAM_FRAMES ; 
 int VICAM_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vicam_camera*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vicam_camera*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct file *file)
{
	struct vicam_camera *cam = file->private_data;
	int open_count;
	struct usb_device *udev;

	FUNC0("close\n");

	/* it's not the end of the world if
	 * we fail to turn the camera off.
	 */

	FUNC5(cam, 0);

	FUNC1(cam->raw_image);
	FUNC4(cam->framebuf, VICAM_MAX_FRAME_SIZE * VICAM_FRAMES);
	FUNC1(cam->cntrlbuf);

	FUNC2(&cam->cam_lock);

	cam->open_count--;
	open_count = cam->open_count;
	udev = cam->udev;

	FUNC3(&cam->cam_lock);

	if (!open_count && !udev) {
		FUNC1(cam);
	}

	return 0;
}