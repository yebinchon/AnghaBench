#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_pgoff; unsigned int vm_end; unsigned int vm_start; int /*<<< orphan*/  vm_page_prot; } ;
struct videobuf_queue {int /*<<< orphan*/  vb_lock; TYPE_1__** bufs; } ;
struct videobuf_dmabuf {unsigned int sglen; int /*<<< orphan*/ * sglist; } ;
struct omap24xxcam_fh {struct videobuf_queue vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  mutex; scalar_t__ streaming; } ;
struct file {struct omap24xxcam_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ memory; int boff; scalar_t__ bsize; } ;

/* Variables and functions */
 int EBUSY ; 
 int PAGE_SHIFT ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 unsigned int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_area_struct*,unsigned int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct videobuf_dmabuf* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct file *file,
				    struct vm_area_struct *vma)
{
	struct omap24xxcam_fh *fh = file->private_data;
	struct omap24xxcam_device *cam = fh->cam;
	struct videobuf_queue *vbq = &fh->vbq;
	unsigned int first, last, size, i, j;
	int err = 0;

	FUNC0(&cam->mutex);
	if (cam->streaming) {
		FUNC1(&cam->mutex);
		return -EBUSY;
	}
	FUNC1(&cam->mutex);
	FUNC0(&vbq->vb_lock);

	/* look for first buffer to map */
	for (first = 0; first < VIDEO_MAX_FRAME; first++) {
		if (NULL == vbq->bufs[first])
			continue;
		if (V4L2_MEMORY_MMAP != vbq->bufs[first]->memory)
			continue;
		if (vbq->bufs[first]->boff == (vma->vm_pgoff << PAGE_SHIFT))
			break;
	}

	/* look for last buffer to map */
	for (size = 0, last = first; last < VIDEO_MAX_FRAME; last++) {
		if (NULL == vbq->bufs[last])
			continue;
		if (V4L2_MEMORY_MMAP != vbq->bufs[last]->memory)
			continue;
		size += vbq->bufs[last]->bsize;
		if (size == (vma->vm_end - vma->vm_start))
			break;
	}

	size = 0;
	for (i = first; i <= last; i++) {
		struct videobuf_dmabuf *dma = FUNC6(vbq->bufs[i]);

		for (j = 0; j < dma->sglen; j++) {
			err = FUNC3(
				vma, vma->vm_start + size,
				FUNC2(FUNC5(&dma->sglist[j])),
				FUNC4(&dma->sglist[j]), vma->vm_page_prot);
			if (err)
				goto out;
			size += FUNC4(&dma->sglist[j]);
		}
	}

out:
	FUNC1(&vbq->vb_lock);

	return err;
}