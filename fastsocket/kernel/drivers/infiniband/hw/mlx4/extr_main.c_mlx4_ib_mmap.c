
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_pgoff; int vm_page_prot; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_ucontext {int device; } ;
struct TYPE_5__ {scalar_t__ pfn; } ;
struct TYPE_8__ {TYPE_1__ uar; } ;
struct TYPE_6__ {scalar_t__ bf_reg_size; scalar_t__ num_uars; } ;
struct TYPE_7__ {TYPE_2__ caps; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_4__* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static int mlx4_ib_mmap(struct ib_ucontext *context, struct vm_area_struct *vma)
{
 struct mlx4_ib_dev *dev = to_mdev(context->device);

 if (vma->vm_end - vma->vm_start != PAGE_SIZE)
  return -EINVAL;

 if (vma->vm_pgoff == 0) {
  vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

  if (io_remap_pfn_range(vma, vma->vm_start,
           to_mucontext(context)->uar.pfn,
           PAGE_SIZE, vma->vm_page_prot))
   return -EAGAIN;
 } else if (vma->vm_pgoff == 1 && dev->dev->caps.bf_reg_size != 0) {
  vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);

  if (io_remap_pfn_range(vma, vma->vm_start,
           to_mucontext(context)->uar.pfn +
           dev->dev->caps.num_uars,
           PAGE_SIZE, vma->vm_page_prot))
   return -EAGAIN;
 } else
  return -EINVAL;

 return 0;
}
