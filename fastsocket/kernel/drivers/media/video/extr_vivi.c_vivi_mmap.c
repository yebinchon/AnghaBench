
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct vivi_fh {int vb_vidq; struct vivi_dev* dev; } ;
struct vivi_dev {int dummy; } ;
struct file {struct vivi_fh* private_data; } ;


 int dprintk (struct vivi_dev*,int,char*,unsigned long,...) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int vivi_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct vivi_fh *fh = file->private_data;
 struct vivi_dev *dev = fh->dev;
 int ret;

 dprintk(dev, 1, "mmap called, vma=0x%08lx\n", (unsigned long)vma);

 ret = videobuf_mmap_mapper(&fh->vb_vidq, vma);

 dprintk(dev, 1, "vma start=0x%08lx, size=%ld, ret=%d\n",
  (unsigned long)vma->vm_start,
  (unsigned long)vma->vm_end-(unsigned long)vma->vm_start,
  ret);

 return ret;
}
