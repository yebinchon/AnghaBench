#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int vm_pgoff; TYPE_3__* vm_private_data; int /*<<< orphan*/ * vm_ops; } ;
struct sn9c102_device {int state; scalar_t__ io; size_t nbuffers; int /*<<< orphan*/  fileop_mutex; TYPE_3__* frame; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {TYPE_1__ m; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {void* bufmem; TYPE_2__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int DEV_DISCONNECTED ; 
 int DEV_MISCONFIGURED ; 
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 scalar_t__ IO_MMAP ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_IO ; 
 int VM_READ ; 
 int VM_RESERVED ; 
 int VM_WRITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  sn9c102_vm_ops ; 
 struct sn9c102_device* FUNC5 (struct file*) ; 
 scalar_t__ FUNC6 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct file* filp, struct vm_area_struct *vma)
{
	struct sn9c102_device *cam = FUNC5(filp);
	unsigned long size = vma->vm_end - vma->vm_start,
		      start = vma->vm_start;
	void *pos;
	u32 i;

	if (FUNC2(&cam->fileop_mutex))
		return -ERESTARTSYS;

	if (cam->state & DEV_DISCONNECTED) {
		FUNC0(1, "Device not present");
		FUNC3(&cam->fileop_mutex);
		return -ENODEV;
	}

	if (cam->state & DEV_MISCONFIGURED) {
		FUNC0(1, "The camera is misconfigured. Close and open it "
		       "again.");
		FUNC3(&cam->fileop_mutex);
		return -EIO;
	}

	if (!(vma->vm_flags & (VM_WRITE | VM_READ))) {
		FUNC3(&cam->fileop_mutex);
		return -EACCES;
	}

	if (cam->io != IO_MMAP ||
	    size != FUNC1(cam->frame[0].buf.length)) {
		FUNC3(&cam->fileop_mutex);
		return -EINVAL;
	}

	for (i = 0; i < cam->nbuffers; i++) {
		if ((cam->frame[i].buf.m.offset>>PAGE_SHIFT) == vma->vm_pgoff)
			break;
	}
	if (i == cam->nbuffers) {
		FUNC3(&cam->fileop_mutex);
		return -EINVAL;
	}

	vma->vm_flags |= VM_IO;
	vma->vm_flags |= VM_RESERVED;

	pos = cam->frame[i].bufmem;
	while (size > 0) { /* size is page-aligned */
		if (FUNC6(vma, start, FUNC7(pos))) {
			FUNC3(&cam->fileop_mutex);
			return -EAGAIN;
		}
		start += PAGE_SIZE;
		pos += PAGE_SIZE;
		size -= PAGE_SIZE;
	}

	vma->vm_ops = &sn9c102_vm_ops;
	vma->vm_private_data = &cam->frame[i];
	FUNC4(vma);

	FUNC3(&cam->fileop_mutex);

	return 0;
}