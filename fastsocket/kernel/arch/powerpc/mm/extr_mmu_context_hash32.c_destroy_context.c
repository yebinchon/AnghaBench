
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
struct mm_struct {TYPE_1__ context; } ;


 scalar_t__ NO_CONTEXT ;
 int clear_bit (scalar_t__,int ) ;
 int context_map ;
 int preempt_disable () ;
 int preempt_enable () ;

void destroy_context(struct mm_struct *mm)
{
 preempt_disable();
 if (mm->context.id != NO_CONTEXT) {
  clear_bit(mm->context.id, context_map);
  mm->context.id = NO_CONTEXT;
 }
 preempt_enable();
}
