
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; TYPE_1__* vm_file; struct vm_area_struct* vm_next; } ;
struct mm_struct {int dummy; } ;
typedef unsigned long off_t ;
struct TYPE_2__ {int f_path; } ;


 unsigned long INVALID_COOKIE ;
 unsigned long NO_COOKIE ;
 unsigned long PAGE_SHIFT ;
 unsigned long fast_get_dcookie (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;

__attribute__((used)) static unsigned long
lookup_dcookie(struct mm_struct *mm, unsigned long addr, off_t *offset)
{
 unsigned long cookie = NO_COOKIE;
 struct vm_area_struct *vma;

 for (vma = find_vma(mm, addr); vma; vma = vma->vm_next) {

  if (addr < vma->vm_start || addr >= vma->vm_end)
   continue;

  if (vma->vm_file) {
   cookie = fast_get_dcookie(&vma->vm_file->f_path);
   *offset = (vma->vm_pgoff << PAGE_SHIFT) + addr -
    vma->vm_start;
  } else {

   *offset = addr;
  }

  break;
 }

 if (!vma)
  cookie = INVALID_COOKIE;

 return cookie;
}
