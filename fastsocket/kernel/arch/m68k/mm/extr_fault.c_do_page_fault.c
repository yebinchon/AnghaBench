
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; } ;
struct pt_regs {int pc; int sr; } ;
struct mm_struct {int mmap_sem; int pgd; } ;
struct TYPE_4__ {unsigned long faddr; int code; void* signo; } ;
struct TYPE_5__ {int comm; TYPE_1__ thread; int min_flt; int maj_flt; struct mm_struct* mm; } ;


 int BUG () ;
 int BUS_ADRERR ;
 int FAULT_FLAG_WRITE ;
 int SEGV_ACCERR ;
 int SEGV_MAPERR ;
 void* SIGBUS ;
 int SIGKILL ;
 void* SIGSEGV ;
 int VM_EXEC ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int VM_GROWSDOWN ;
 int VM_IO ;
 int VM_READ ;
 int VM_WRITE ;
 TYPE_2__* current ;
 int do_group_exit (int ) ;
 int down_read (int *) ;
 scalar_t__ expand_stack (struct vm_area_struct*,unsigned long) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int handle_mm_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ in_atomic () ;
 scalar_t__ is_global_init (TYPE_2__*) ;
 int printk (char*,...) ;
 unsigned long rdusp () ;
 int send_fault_sig (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 scalar_t__ user_mode (struct pt_regs*) ;
 int yield () ;

int do_page_fault(struct pt_regs *regs, unsigned long address,
         unsigned long error_code)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct * vma;
 int write, fault;
 if (in_atomic() || !mm)
  goto no_context;

 down_read(&mm->mmap_sem);

 vma = find_vma(mm, address);
 if (!vma)
  goto map_err;
 if (vma->vm_flags & VM_IO)
  goto acc_err;
 if (vma->vm_start <= address)
  goto good_area;
 if (!(vma->vm_flags & VM_GROWSDOWN))
  goto map_err;
 if (user_mode(regs)) {




  if (address + 256 < rdusp())
   goto map_err;
 }
 if (expand_stack(vma, address))
  goto map_err;





good_area:



 write = 0;
 switch (error_code & 3) {
  default:

  case 2:
   if (!(vma->vm_flags & VM_WRITE))
    goto acc_err;
   write++;
   break;
  case 1:
   goto acc_err;
  case 0:
   if (!(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE)))
    goto acc_err;
 }







 survive:
 fault = handle_mm_fault(mm, vma, address, write ? FAULT_FLAG_WRITE : 0);



 if (unlikely(fault & VM_FAULT_ERROR)) {
  if (fault & VM_FAULT_OOM)
   goto out_of_memory;
  else if (fault & VM_FAULT_SIGBUS)
   goto bus_err;
  BUG();
 }
 if (fault & VM_FAULT_MAJOR)
  current->maj_flt++;
 else
  current->min_flt++;

 up_read(&mm->mmap_sem);
 return 0;





out_of_memory:
 up_read(&mm->mmap_sem);
 if (is_global_init(current)) {
  yield();
  down_read(&mm->mmap_sem);
  goto survive;
 }

 printk("VM: killing process %s\n", current->comm);
 if (user_mode(regs))
  do_group_exit(SIGKILL);

no_context:
 current->thread.signo = SIGBUS;
 current->thread.faddr = address;
 return send_fault_sig(regs);

bus_err:
 current->thread.signo = SIGBUS;
 current->thread.code = BUS_ADRERR;
 current->thread.faddr = address;
 goto send_sig;

map_err:
 current->thread.signo = SIGSEGV;
 current->thread.code = SEGV_MAPERR;
 current->thread.faddr = address;
 goto send_sig;

acc_err:
 current->thread.signo = SIGSEGV;
 current->thread.code = SEGV_ACCERR;
 current->thread.faddr = address;

send_sig:
 up_read(&mm->mmap_sem);
 return send_fault_sig(regs);
}
