
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {scalar_t__ virtual_address; } ;
struct vm_area_struct {int vm_page_prot; } ;
struct gru_thread_state {scalar_t__ ts_steal_jiffies; int ts_ctxlock; int ts_ctxnum; int ts_gru; } ;


 int GRU_ASSIGN_DELAY ;
 int GRU_GSEG_PAGESIZE ;
 scalar_t__ GRU_STEAL_DELAY ;
 int GSEG_BASE (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int STAT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int TSID (unsigned long,struct vm_area_struct*) ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int gru_assign_gru_context (struct gru_thread_state*) ;
 int gru_check_context_placement (struct gru_thread_state*) ;
 int gru_dbg (int ,char*,struct vm_area_struct*,unsigned long,int ) ;
 struct gru_thread_state* gru_find_thread_state (struct vm_area_struct*,int ) ;
 int gru_load_context (struct gru_thread_state*) ;
 int gru_steal_context (struct gru_thread_state*) ;
 int grudev ;
 unsigned long gseg_physical_address (int ,int ) ;
 scalar_t__ jiffies ;
 int load_user_context ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nopfn ;
 int preempt_disable () ;
 int preempt_enable () ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,int,int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

int gru_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct gru_thread_state *gts;
 unsigned long paddr, vaddr;

 vaddr = (unsigned long)vmf->virtual_address;
 gru_dbg(grudev, "vma %p, vaddr 0x%lx (0x%lx)\n",
  vma, vaddr, GSEG_BASE(vaddr));
 STAT(nopfn);


 gts = gru_find_thread_state(vma, TSID(vaddr, vma));
 if (!gts)
  return VM_FAULT_SIGBUS;

again:
 mutex_lock(&gts->ts_ctxlock);
 preempt_disable();

 gru_check_context_placement(gts);

 if (!gts->ts_gru) {
  STAT(load_user_context);
  if (!gru_assign_gru_context(gts)) {
   preempt_enable();
   mutex_unlock(&gts->ts_ctxlock);
   set_current_state(TASK_INTERRUPTIBLE);
   schedule_timeout(GRU_ASSIGN_DELAY);
   if (gts->ts_steal_jiffies + GRU_STEAL_DELAY < jiffies)
    gru_steal_context(gts);
   goto again;
  }
  gru_load_context(gts);
  paddr = gseg_physical_address(gts->ts_gru, gts->ts_ctxnum);
  remap_pfn_range(vma, vaddr & ~(GRU_GSEG_PAGESIZE - 1),
    paddr >> PAGE_SHIFT, GRU_GSEG_PAGESIZE,
    vma->vm_page_prot);
 }

 preempt_enable();
 mutex_unlock(&gts->ts_ctxlock);

 return VM_FAULT_NOPAGE;
}
