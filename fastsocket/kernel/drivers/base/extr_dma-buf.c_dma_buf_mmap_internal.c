
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_pgoff; int vm_end; int vm_start; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_buf {scalar_t__ size; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mmap ) (struct dma_buf*,struct vm_area_struct*) ;} ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int is_dma_buf_file (struct file*) ;
 int stub1 (struct dma_buf*,struct vm_area_struct*) ;

__attribute__((used)) static int dma_buf_mmap_internal(struct file *file, struct vm_area_struct *vma)
{
 struct dma_buf *dmabuf;

 if (!is_dma_buf_file(file))
  return -EINVAL;

 dmabuf = file->private_data;


 if (vma->vm_pgoff + ((vma->vm_end - vma->vm_start) >> PAGE_SHIFT) >
     dmabuf->size >> PAGE_SHIFT)
  return -EINVAL;

 return dmabuf->ops->mmap(dmabuf, vma);
}
