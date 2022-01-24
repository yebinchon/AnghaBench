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
struct usb_stv {int user; int maxframesize; int /*<<< orphan*/  fbuf; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int STV680_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct usb_stv*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct video_device* FUNC5 (struct file*) ; 
 struct usb_stv* FUNC6 (struct video_device*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct video_device *dev = FUNC5(file);
	struct usb_stv *stv680 = FUNC6(dev);
	int err = 0;

	/* we are called with the BKL held */
	FUNC1();
	stv680->user = 1;
	err = FUNC3 (stv680);	/* main initialization routine for camera */

	if (err >= 0) {
		stv680->fbuf = FUNC2 (stv680->maxframesize * STV680_NUMFRAMES);
		if (!stv680->fbuf) {
			FUNC0 (0, "STV(e): Could not rvmalloc frame bufer");
			err = -ENOMEM;
		}
		file->private_data = dev;
	}
	if (err)
		stv680->user = 0;
	FUNC4();

	return err;
}