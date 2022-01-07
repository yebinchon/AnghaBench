
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct file {int dummy; } ;


 int ENOSYS ;
 int VM_SHARED ;
 int shmem_zero_setup (struct vm_area_struct*) ;

__attribute__((used)) static int mmap_zero(struct file * file, struct vm_area_struct * vma)
{

 return -ENOSYS;

 if (vma->vm_flags & VM_SHARED)
  return shmem_zero_setup(vma);
 return 0;
}
