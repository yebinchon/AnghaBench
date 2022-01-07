
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsb_config {int * tsb; } ;
struct TYPE_2__ {unsigned long sparc64_ctx_val; struct tsb_config* tsb_block; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned long CTX_PGSZ0_SHIFT ;
 unsigned long CTX_PGSZ1_SHIFT ;
 unsigned long CTX_PGSZ_BASE ;
 unsigned long CTX_PGSZ_HUGE ;
 unsigned long CTX_PGSZ_MASK ;
 size_t MM_TSB_HUGE ;
 scalar_t__ cheetah_plus ;
 int context_reload ;
 int ctx_alloc_lock ;
 int do_flush_tlb_mm (struct mm_struct*) ;
 scalar_t__ likely (int ) ;
 int on_each_cpu (int ,struct mm_struct*,int ) ;
 int smp_tsb_sync (struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tlb_type ;
 int tsb_context_switch (struct mm_struct*) ;
 int tsb_grow (struct mm_struct*,size_t,int ) ;

void hugetlb_prefault_arch_hook(struct mm_struct *mm)
{
 struct tsb_config *tp = &mm->context.tsb_block[MM_TSB_HUGE];

 if (likely(tp->tsb != ((void*)0)))
  return;

 tsb_grow(mm, MM_TSB_HUGE, 0);
 tsb_context_switch(mm);
 smp_tsb_sync(mm);




 if (tlb_type == cheetah_plus) {
  unsigned long ctx;

  spin_lock(&ctx_alloc_lock);
  ctx = mm->context.sparc64_ctx_val;
  ctx &= ~CTX_PGSZ_MASK;
  ctx |= CTX_PGSZ_BASE << CTX_PGSZ0_SHIFT;
  ctx |= CTX_PGSZ_HUGE << CTX_PGSZ1_SHIFT;

  if (ctx != mm->context.sparc64_ctx_val) {






   do_flush_tlb_mm(mm);




   mm->context.sparc64_ctx_val = ctx;
   on_each_cpu(context_reload, mm, 0);
  }
  spin_unlock(&ctx_alloc_lock);
 }
}
