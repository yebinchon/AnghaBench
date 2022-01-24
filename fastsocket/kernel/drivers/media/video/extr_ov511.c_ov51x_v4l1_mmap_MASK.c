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
struct usb_ov511 {int /*<<< orphan*/  lock; scalar_t__ fbuf; int /*<<< orphan*/  maxheight; int /*<<< orphan*/  maxwidth; int /*<<< orphan*/ * dev; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OV511_NUMFRAMES ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 struct usb_ov511* FUNC5 (struct video_device*) ; 
 unsigned long FUNC6 (void*) ; 

__attribute__((used)) static int
FUNC7(struct file *file, struct vm_area_struct *vma)
{
	struct video_device *vdev = file->private_data;
	unsigned long start = vma->vm_start;
	unsigned long size  = vma->vm_end - vma->vm_start;
	struct usb_ov511 *ov = FUNC5(vdev);
	unsigned long page, pos;

	if (ov->dev == NULL)
		return -EIO;

	FUNC1(4, "mmap: %ld (%lX) bytes", size, size);

	if (size > (((OV511_NUMFRAMES
		      * FUNC0(ov->maxwidth, ov->maxheight)
		      + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))))
		return -EINVAL;

	if (FUNC2(&ov->lock))
		return -EINTR;

	pos = (unsigned long)ov->fbuf;
	while (size > 0) {
		page = FUNC6((void *)pos);
		if (FUNC4(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
			FUNC3(&ov->lock);
			return -EAGAIN;
		}
		start += PAGE_SIZE;
		pos += PAGE_SIZE;
		if (size > PAGE_SIZE)
			size -= PAGE_SIZE;
		else
			size = 0;
	}

	FUNC3(&ov->lock);
	return 0;
}