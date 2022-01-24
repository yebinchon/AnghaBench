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
struct vm_area_struct {int dummy; } ;
struct video_card {int /*<<< orphan*/  mtx; int /*<<< orphan*/  dv_buf; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct file*,struct vm_area_struct*) ; 
 int FUNC1 (struct video_card*) ; 
 struct video_card* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct video_card*) ; 

__attribute__((used)) static int FUNC6(struct file *file, struct vm_area_struct *vma)
{
	struct video_card *video = FUNC2(file);
	int retval = -EINVAL;

	/*
	 * We cannot use the blocking variant mutex_lock here because .mmap
	 * is called with mmap_sem held, while .ioctl, .read, .write acquire
	 * video->mtx and subsequently call copy_to/from_user which will
	 * grab mmap_sem in case of a page fault.
	 */
	if (!FUNC3(&video->mtx))
		return -EAGAIN;

	if ( ! FUNC5(video) ) {
		retval = FUNC1(video);
		if (retval)
			goto out;
	}

	retval = FUNC0(&video->dv_buf, file, vma);
out:
	FUNC4(&video->mtx);
	return retval;
}