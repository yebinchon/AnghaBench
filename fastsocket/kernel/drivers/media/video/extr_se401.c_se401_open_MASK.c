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
struct usb_se401 {int user; int maxframesize; scalar_t__ fbuf; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int SE401_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct video_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file)
{
	struct video_device *dev = FUNC3(file);
	struct usb_se401 *se401 = (struct usb_se401 *)dev;
	int err = 0;

	FUNC0();
	if (se401->user) {
		FUNC2();
		return -EBUSY;
	}
	se401->fbuf = FUNC1(se401->maxframesize * SE401_NUMFRAMES);
	if (se401->fbuf)
		file->private_data = dev;
	else
		err = -ENOMEM;
	se401->user = !err;
	FUNC2();

	return err;
}