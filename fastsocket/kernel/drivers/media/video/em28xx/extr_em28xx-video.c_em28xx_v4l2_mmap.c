
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;


 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct em28xx*) ;
 int em28xx_videodbg (char*,unsigned long,unsigned long,int) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int em28xx_v4l2_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct em28xx_fh *fh = filp->private_data;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  rc = videobuf_mmap_mapper(&fh->vb_vidq, vma);
 else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  rc = videobuf_mmap_mapper(&fh->vb_vbiq, vma);

 em28xx_videodbg("vma start=0x%08lx, size=%ld, ret=%d\n",
  (unsigned long)vma->vm_start,
  (unsigned long)vma->vm_end-(unsigned long)vma->vm_start,
  rc);

 return rc;
}
