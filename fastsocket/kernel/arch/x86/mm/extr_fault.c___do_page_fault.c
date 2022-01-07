
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct task_struct {int min_flt; int maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int flags; unsigned long sp; int ip; } ;
struct mm_struct {int mmap_sem; } ;


 unsigned int FAULT_FLAG_ALLOW_RETRY ;
 unsigned int FAULT_FLAG_KILLABLE ;
 unsigned int FAULT_FLAG_WRITE ;
 int PERF_COUNT_SW_PAGE_FAULTS ;
 int PERF_COUNT_SW_PAGE_FAULTS_MAJ ;
 int PERF_COUNT_SW_PAGE_FAULTS_MIN ;
 unsigned long PF_PROT ;
 unsigned long PF_RSVD ;
 unsigned long PF_USER ;
 unsigned long PF_WRITE ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_RETRY ;
 int VM_GROWSDOWN ;
 int X86_EFLAGS_IF ;
 int access_error (unsigned long,int,struct vm_area_struct*) ;
 int bad_area (struct pt_regs*,unsigned long,unsigned long) ;
 int bad_area_access_error (struct pt_regs*,unsigned long,unsigned long) ;
 int bad_area_nosemaphore (struct pt_regs*,unsigned long,unsigned long) ;
 int check_v8086_mode (struct pt_regs*,unsigned long,struct task_struct*) ;
 struct task_struct* current ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 int expand_stack (struct vm_area_struct*,unsigned long) ;
 int fault_in_kernel_space (unsigned long) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int handle_mm_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned int) ;
 scalar_t__ in_atomic () ;
 scalar_t__ kmemcheck_active (struct pt_regs*) ;
 scalar_t__ kmemcheck_fault (struct pt_regs*,unsigned long,unsigned long) ;
 int kmemcheck_hide (struct pt_regs*) ;
 int kmmio_fault (struct pt_regs*,unsigned long) ;
 scalar_t__ likely (int) ;
 int local_irq_enable () ;
 int might_sleep () ;
 scalar_t__ mm_fault_error (struct pt_regs*,unsigned long,unsigned long,int) ;
 int notify_page_fault (struct pt_regs*) ;
 int perf_sw_event (int ,int,struct pt_regs*,unsigned long) ;
 int pgtable_bad (struct pt_regs*,unsigned long,unsigned long) ;
 int prefetchw (int *) ;
 int search_exception_tables (int ) ;
 scalar_t__ spurious_fault (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 scalar_t__ user_mode_vm (struct pt_regs*) ;
 scalar_t__ vmalloc_fault (unsigned long) ;

__attribute__((used)) static inline void __do_page_fault(struct pt_regs *regs, unsigned long address, unsigned long error_code)
{
 struct vm_area_struct *vma;
 struct task_struct *tsk;
 struct mm_struct *mm;
 int fault;
 int write = error_code & PF_WRITE;
 unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE |
     (write ? FAULT_FLAG_WRITE : 0);

 tsk = current;
 mm = tsk->mm;





 if (kmemcheck_active(regs))
  kmemcheck_hide(regs);
 prefetchw(&mm->mmap_sem);

 if (unlikely(kmmio_fault(regs, address)))
  return;
 if (unlikely(fault_in_kernel_space(address))) {
  if (!(error_code & (PF_RSVD | PF_USER | PF_PROT))) {
   if (vmalloc_fault(address) >= 0)
    return;

   if (kmemcheck_fault(regs, address, error_code))
    return;
  }


  if (spurious_fault(error_code, address))
   return;


  if (notify_page_fault(regs))
   return;




  bad_area_nosemaphore(regs, error_code, address);

  return;
 }


 if (unlikely(notify_page_fault(regs)))
  return;







 if (user_mode_vm(regs)) {
  local_irq_enable();
  error_code |= PF_USER;
 } else {
  if (regs->flags & X86_EFLAGS_IF)
   local_irq_enable();
 }

 if (unlikely(error_code & PF_RSVD))
  pgtable_bad(regs, error_code, address);

 perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);





 if (unlikely(in_atomic() || !mm)) {
  bad_area_nosemaphore(regs, error_code, address);
  return;
 }
 if (unlikely(!down_read_trylock(&mm->mmap_sem))) {
  if ((error_code & PF_USER) == 0 &&
      !search_exception_tables(regs->ip)) {
   bad_area_nosemaphore(regs, error_code, address);
   return;
  }
retry:
  down_read(&mm->mmap_sem);
 } else {





  might_sleep();
 }

 vma = find_vma(mm, address);
 if (unlikely(!vma)) {
  bad_area(regs, error_code, address);
  return;
 }
 if (likely(vma->vm_start <= address))
  goto good_area;
 if (unlikely(!(vma->vm_flags & VM_GROWSDOWN))) {
  bad_area(regs, error_code, address);
  return;
 }
 if (error_code & PF_USER) {






  if (unlikely(address + 65536 + 32 * sizeof(unsigned long) < regs->sp)) {
   bad_area(regs, error_code, address);
   return;
  }
 }
 if (unlikely(expand_stack(vma, address))) {
  bad_area(regs, error_code, address);
  return;
 }





good_area:
 if (unlikely(access_error(error_code, write, vma))) {
  bad_area_access_error(regs, error_code, address);
  return;
 }






 fault = handle_mm_fault(mm, vma, address, flags);

 if (unlikely(fault & (VM_FAULT_RETRY|VM_FAULT_ERROR))) {
  if (mm_fault_error(regs, error_code, address, fault))
   return;
 }






 if (flags & FAULT_FLAG_ALLOW_RETRY) {
  if (fault & VM_FAULT_MAJOR) {
   tsk->maj_flt++;
   perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
          regs, address);
  } else {
   tsk->min_flt++;
   perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
          regs, address);
  }
  if (fault & VM_FAULT_RETRY) {


   flags &= ~FAULT_FLAG_ALLOW_RETRY;
   goto retry;
  }
 }

 check_v8086_mode(regs, address, tsk);

 up_read(&mm->mmap_sem);
}
