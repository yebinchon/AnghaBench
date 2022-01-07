
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {struct au0828_fh* private_data; } ;
struct au0828_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; struct au0828_dev* dev; } ;
struct au0828_dev {int dummy; } ;


 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct au0828_dev*) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int au0828_v4l2_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct au0828_fh *fh = filp->private_data;
 struct au0828_dev *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  rc = videobuf_mmap_mapper(&fh->vb_vidq, vma);
 else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  rc = videobuf_mmap_mapper(&fh->vb_vbiq, vma);

 return rc;
}
