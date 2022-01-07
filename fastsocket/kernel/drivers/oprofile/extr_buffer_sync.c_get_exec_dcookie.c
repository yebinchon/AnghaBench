
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;
struct TYPE_2__ {int f_path; } ;


 unsigned long NO_COOKIE ;
 int VM_EXECUTABLE ;
 unsigned long fast_get_dcookie (int *) ;

__attribute__((used)) static unsigned long get_exec_dcookie(struct mm_struct *mm)
{
 unsigned long cookie = NO_COOKIE;
 struct vm_area_struct *vma;

 if (!mm)
  goto out;

 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  if (!vma->vm_file)
   continue;
  if (!(vma->vm_flags & VM_EXECUTABLE))
   continue;
  cookie = fast_get_dcookie(&vma->vm_file->f_path);
  break;
 }

out:
 return cookie;
}
