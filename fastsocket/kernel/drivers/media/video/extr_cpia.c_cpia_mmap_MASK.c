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
struct file {struct video_device* private_data; } ;
struct cam_data {int /*<<< orphan*/  busy_lock; scalar_t__ frame_buf; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 unsigned long CPIA_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int EAGAIN ; 
 int EINTR ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned long FRAME_NUM ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 unsigned long PAGE_SIZE ; 
 int FUNC1 (struct cam_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 struct cam_data* FUNC5 (struct video_device*) ; 
 unsigned long FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct vm_area_struct *vma)
{
	struct video_device *dev = file->private_data;
	unsigned long start = vma->vm_start;
	unsigned long size  = vma->vm_end - vma->vm_start;
	unsigned long page, pos;
	struct cam_data *cam = FUNC5(dev);
	int retval;

	if (!cam || !cam->ops)
		return -ENODEV;

	FUNC0("cpia_mmap: %ld\n", size);

	if (size > FRAME_NUM*CPIA_MAX_FRAME_SIZE)
		return -EINVAL;

	if (!cam || !cam->ops)
		return -ENODEV;

	/* make this _really_ smp-safe */
	if (FUNC2(&cam->busy_lock))
		return -EINTR;

	if (!cam->frame_buf) {	/* we do lazy allocation */
		if ((retval = FUNC1(cam))) {
			FUNC3(&cam->busy_lock);
			return retval;
		}
	}

	pos = (unsigned long)(cam->frame_buf);
	while (size > 0) {
		page = FUNC6((void *)pos);
		if (FUNC4(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
			FUNC3(&cam->busy_lock);
			return -EAGAIN;
		}
		start += PAGE_SIZE;
		pos += PAGE_SIZE;
		if (size > PAGE_SIZE)
			size -= PAGE_SIZE;
		else
			size = 0;
	}

	FUNC0("cpia_mmap: %ld\n", size);
	FUNC3(&cam->busy_lock);

	return 0;
}