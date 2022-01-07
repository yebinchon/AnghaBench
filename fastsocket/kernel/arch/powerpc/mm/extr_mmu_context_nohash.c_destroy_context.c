
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int id; scalar_t__ active; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned int MMU_NO_CONTEXT ;
 int WARN_ON (int) ;
 int __clear_bit (unsigned int,int ) ;
 int context_lock ;
 int context_map ;
 int ** context_mm ;
 int nr_free_contexts ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void destroy_context(struct mm_struct *mm)
{
 unsigned long flags;
 unsigned int id;

 if (mm->context.id == MMU_NO_CONTEXT)
  return;

 WARN_ON(mm->context.active != 0);

 spin_lock_irqsave(&context_lock, flags);
 id = mm->context.id;
 if (id != MMU_NO_CONTEXT) {
  __clear_bit(id, context_map);
  mm->context.id = MMU_NO_CONTEXT;



  context_mm[id] = ((void*)0);
  nr_free_contexts++;
 }
 spin_unlock_irqrestore(&context_lock, flags);
}
