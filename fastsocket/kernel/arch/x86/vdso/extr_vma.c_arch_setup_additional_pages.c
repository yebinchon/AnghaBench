
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vdso; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; int start_stack; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 TYPE_2__* current ;
 int down_write (int *) ;
 unsigned long get_unmapped_area (int *,unsigned long,int ,int ,int ) ;
 int install_special_mapping (struct mm_struct*,unsigned long,int ,int,int ) ;
 int up_write (int *) ;
 unsigned long vdso_addr (int ,int ) ;
 int vdso_enabled ;
 int vdso_pages ;
 int vdso_size ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 struct mm_struct *mm = current->mm;
 unsigned long addr;
 int ret;

 if (!vdso_enabled)
  return 0;

 down_write(&mm->mmap_sem);
 addr = vdso_addr(mm->start_stack, vdso_size);
 addr = get_unmapped_area(((void*)0), addr, vdso_size, 0, 0);
 if (IS_ERR_VALUE(addr)) {
  ret = addr;
  goto up_fail;
 }

 current->mm->context.vdso = (void *)addr;

 ret = install_special_mapping(mm, addr, vdso_size,
          VM_READ|VM_EXEC|
          VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
          vdso_pages);
 if (ret) {
  current->mm->context.vdso = ((void*)0);
  goto up_fail;
 }

up_fail:
 up_write(&mm->mmap_sem);
 return ret;
}
