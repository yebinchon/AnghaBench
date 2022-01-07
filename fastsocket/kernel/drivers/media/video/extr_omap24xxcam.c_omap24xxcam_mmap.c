
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_private_data; int vm_page_prot; } ;
struct omap24xxcam_fh {int vbq; } ;
struct file {struct omap24xxcam_fh* private_data; } ;


 int kfree (int ) ;
 int omap24xxcam_mmap_buffers (struct file*,struct vm_area_struct*) ;
 int pgprot_noncached (int ) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int omap24xxcam_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct omap24xxcam_fh *fh = file->private_data;
 int rval;


 rval = videobuf_mmap_mapper(&fh->vbq, vma);
 if (rval)
  return rval;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);


 rval = omap24xxcam_mmap_buffers(file, vma);




 if (rval)
  kfree(vma->vm_private_data);

 return rval;
}
