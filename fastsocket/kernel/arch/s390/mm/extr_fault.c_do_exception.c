
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct task_struct {int min_flt; int maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 int FAULT_FLAG_WRITE ;
 unsigned long HPAGE_MASK ;
 int PERF_COUNT_SW_PAGE_FAULTS ;
 int PERF_COUNT_SW_PAGE_FAULTS_MAJ ;
 int PERF_COUNT_SW_PAGE_FAULTS_MIN ;
 int TIF_SINGLE_STEP ;
 int VM_FAULT_BADACCESS ;
 int VM_FAULT_BADCONTEXT ;
 int VM_FAULT_BADMAP ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_GROWSDOWN ;
 int VM_WRITE ;
 unsigned long __FAIL_ADDR_MASK ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct task_struct* current ;
 int down_read (int *) ;
 scalar_t__ expand_stack (struct vm_area_struct*,unsigned long) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int handle_mm_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ in_atomic () ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int local_irq_enable () ;
 scalar_t__ notify_page_fault (struct pt_regs*) ;
 int perf_sw_event (int ,int,struct pt_regs*,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int user_space_fault (unsigned long) ;

__attribute__((used)) static inline int do_exception(struct pt_regs *regs, int access,
          unsigned long trans_exc_code)
{
 struct task_struct *tsk;
 struct mm_struct *mm;
 struct vm_area_struct *vma;
 unsigned long address;
 int fault;

 if (notify_page_fault(regs))
  return 0;

 tsk = current;
 mm = tsk->mm;






 fault = VM_FAULT_BADCONTEXT;
 if (unlikely(!user_space_fault(trans_exc_code) || in_atomic() || !mm))
  goto out;

 address = trans_exc_code & __FAIL_ADDR_MASK;





 local_irq_enable();
 perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
 down_read(&mm->mmap_sem);

 fault = VM_FAULT_BADMAP;
 vma = find_vma(mm, address);
 if (!vma)
  goto out_up;

 if (unlikely(vma->vm_start > address)) {
  if (!(vma->vm_flags & VM_GROWSDOWN))
   goto out_up;
  if (expand_stack(vma, address))
   goto out_up;
 }





 fault = VM_FAULT_BADACCESS;
 if (unlikely(!(vma->vm_flags & access)))
  goto out_up;

 if (is_vm_hugetlb_page(vma))
  address &= HPAGE_MASK;





 fault = handle_mm_fault(mm, vma, address,
    (access == VM_WRITE) ? FAULT_FLAG_WRITE : 0);
 if (unlikely(fault & VM_FAULT_ERROR))
  goto out_up;

 if (fault & VM_FAULT_MAJOR) {
  tsk->maj_flt++;
  perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
         regs, address);
 } else {
  tsk->min_flt++;
  perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
         regs, address);
 }




 clear_tsk_thread_flag(tsk, TIF_SINGLE_STEP);
 fault = 0;
out_up:
 up_read(&mm->mmap_sem);
out:
 return fault;
}
