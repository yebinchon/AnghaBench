
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct soc_camera_device {int dev; int vb_vidq; struct file* streamer; } ;
struct file {struct soc_camera_device* private_data; } ;


 int EBUSY ;
 int dev_dbg (int *,char*,unsigned long,...) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int soc_camera_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct soc_camera_device *icd = file->private_data;
 int err;

 dev_dbg(&icd->dev, "mmap called, vma=0x%08lx\n", (unsigned long)vma);

 if (icd->streamer != file)
  return -EBUSY;

 err = videobuf_mmap_mapper(&icd->vb_vidq, vma);

 dev_dbg(&icd->dev, "vma start=0x%08lx, size=%ld, ret=%d\n",
  (unsigned long)vma->vm_start,
  (unsigned long)vma->vm_end - (unsigned long)vma->vm_start,
  err);

 return err;
}
