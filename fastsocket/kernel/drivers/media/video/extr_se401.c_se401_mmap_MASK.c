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
struct usb_se401 {int maxframesize; int /*<<< orphan*/  lock; scalar_t__ fbuf; int /*<<< orphan*/ * dev; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 int PAGE_SIZE ; 
 int SE401_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *vma)
{
	struct video_device *dev = file->private_data;
	struct usb_se401 *se401 = (struct usb_se401 *)dev;
	unsigned long start = vma->vm_start;
	unsigned long size  = vma->vm_end-vma->vm_start;
	unsigned long page, pos;

	FUNC0(&se401->lock);

	if (se401->dev ==  NULL) {
		FUNC1(&se401->lock);
		return -EIO;
	}
	if (size > (((SE401_NUMFRAMES * se401->maxframesize) + PAGE_SIZE - 1)
							& ~(PAGE_SIZE - 1))) {
		FUNC1(&se401->lock);
		return -EINVAL;
	}
	pos = (unsigned long)se401->fbuf;
	while (size > 0) {
		page = FUNC3((void *)pos);
		if (FUNC2(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
			FUNC1(&se401->lock);
			return -EAGAIN;
		}
		start +=  PAGE_SIZE;
		pos +=  PAGE_SIZE;
		if (size > PAGE_SIZE)
			size -=  PAGE_SIZE;
		else
			size = 0;
	}
	FUNC1(&se401->lock);

	return 0;
}