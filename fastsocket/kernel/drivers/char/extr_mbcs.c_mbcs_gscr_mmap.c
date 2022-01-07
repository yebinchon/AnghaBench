
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_pgoff; int vm_page_prot; int vm_start; } ;
struct mbcs_soft {int gscr_addr; } ;
struct file {struct cx_dev* private_data; } ;
struct cx_dev {struct mbcs_soft* soft; } ;


 int EAGAIN ;
 int EINVAL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __pa (int ) ;
 int pgprot_noncached (int ) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,int ,int,int ,int ) ;

__attribute__((used)) static int mbcs_gscr_mmap(struct file *fp, struct vm_area_struct *vma)
{
 struct cx_dev *cx_dev = fp->private_data;
 struct mbcs_soft *soft = cx_dev->soft;

 if (vma->vm_pgoff != 0)
  return -EINVAL;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);


 if (remap_pfn_range(vma,
       vma->vm_start,
       __pa(soft->gscr_addr) >> PAGE_SHIFT,
       PAGE_SIZE,
       vma->vm_page_prot))
  return -EAGAIN;

 return 0;
}
