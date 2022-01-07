
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_page_prot; } ;
struct proc_dir_entry {scalar_t__ size; int data; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 struct proc_dir_entry* PDE (int ) ;
 int __pa (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;

__attribute__((used)) static int page_map_mmap( struct file *file, struct vm_area_struct *vma )
{
 struct proc_dir_entry *dp = PDE(file->f_path.dentry->d_inode);

 if ((vma->vm_end - vma->vm_start) > dp->size)
  return -EINVAL;

 remap_pfn_range(vma, vma->vm_start, __pa(dp->data) >> PAGE_SHIFT,
      dp->size, vma->vm_page_prot);
 return 0;
}
