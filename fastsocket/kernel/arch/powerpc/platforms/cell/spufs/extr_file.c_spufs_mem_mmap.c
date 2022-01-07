
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_pgoff; int vm_flags; int * vm_ops; int vm_page_prot; int vm_end; } ;
struct spu_state {scalar_t__ use_big_pages; } ;
struct spu_context {struct spu_state csa; } ;
struct file {struct spu_context* private_data; } ;


 int EINVAL ;
 int VM_IO ;
 int VM_PFNMAP ;
 int VM_SHARED ;
 int pgprot_noncached_wc (int ) ;
 int pr_debug (char*,int,int ,int) ;
 int spufs_mem_mmap_vmops ;

__attribute__((used)) static int spufs_mem_mmap(struct file *file, struct vm_area_struct *vma)
{
 if (!(vma->vm_flags & VM_SHARED))
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached_wc(vma->vm_page_prot);

 vma->vm_ops = &spufs_mem_mmap_vmops;
 return 0;
}
