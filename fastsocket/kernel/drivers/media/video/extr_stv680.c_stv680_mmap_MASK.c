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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct video_device {int dummy; } ;
struct usb_stv {int maxframesize; int /*<<< orphan*/  lock; scalar_t__ fbuf; int /*<<< orphan*/ * udev; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 int PAGE_SIZE ; 
 int STV680_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 struct usb_stv* FUNC3 (struct video_device*) ; 
 unsigned long FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5 (struct file *file, struct vm_area_struct *vma)
{
	struct video_device *dev = file->private_data;
	struct usb_stv *stv680 = FUNC3(dev);
	unsigned long start = vma->vm_start;
	unsigned long size  = vma->vm_end-vma->vm_start;
	unsigned long page, pos;

	FUNC0(&stv680->lock);

	if (stv680->udev == NULL) {
		FUNC1(&stv680->lock);
		return -EIO;
	}
	if (size > (((STV680_NUMFRAMES * stv680->maxframesize) + PAGE_SIZE - 1)
		    & ~(PAGE_SIZE - 1))) {
		FUNC1(&stv680->lock);
		return -EINVAL;
	}
	pos = (unsigned long) stv680->fbuf;
	while (size > 0) {
		page = FUNC4((void *)pos);
		if (FUNC2(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
			FUNC1(&stv680->lock);
			return -EAGAIN;
		}
		start += PAGE_SIZE;
		pos += PAGE_SIZE;
		if (size > PAGE_SIZE)
			size -= PAGE_SIZE;
		else
			size = 0;
	}
	FUNC1(&stv680->lock);

	return 0;
}