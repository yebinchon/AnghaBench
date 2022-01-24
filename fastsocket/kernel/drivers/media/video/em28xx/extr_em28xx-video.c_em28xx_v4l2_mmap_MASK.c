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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {scalar_t__ type; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct file *filp, struct vm_area_struct *vma)
{
	struct em28xx_fh *fh    = filp->private_data;
	struct em28xx	 *dev   = fh->dev;
	int		 rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		rc = FUNC2(&fh->vb_vidq, vma);
	else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
		rc = FUNC2(&fh->vb_vbiq, vma);

	FUNC1("vma start=0x%08lx, size=%ld, ret=%d\n",
		(unsigned long)vma->vm_start,
		(unsigned long)vma->vm_end-(unsigned long)vma->vm_start,
		rc);

	return rc;
}