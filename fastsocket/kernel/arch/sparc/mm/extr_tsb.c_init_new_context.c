
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {unsigned long sparc64_ctx_val; unsigned long huge_pte_count; TYPE_1__* tsb_block; int lock; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_3__ {int * tsb; } ;


 int ENOMEM ;
 unsigned int MM_NUM_TSBS ;
 size_t MM_TSB_BASE ;
 size_t MM_TSB_HUGE ;
 unsigned long get_mm_rss (struct mm_struct*) ;
 int spin_lock_init (int *) ;
 int tsb_grow (struct mm_struct*,size_t,unsigned long) ;
 scalar_t__ unlikely (int) ;

int init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{



 unsigned int i;

 spin_lock_init(&mm->context.lock);

 mm->context.sparc64_ctx_val = 0UL;
 for (i = 0; i < MM_NUM_TSBS; i++)
  mm->context.tsb_block[i].tsb = ((void*)0);




 tsb_grow(mm, MM_TSB_BASE, get_mm_rss(mm));






 if (unlikely(!mm->context.tsb_block[MM_TSB_BASE].tsb))
  return -ENOMEM;

 return 0;
}
