
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_frame {int next_frame; } ;


 int WARN_ONCE (int,char*,int *) ;
 int in_irq_stack (unsigned long*,unsigned long*,unsigned long*) ;
 int probe_kernel_address (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long
fixup_bp_irq_link(unsigned long bp, unsigned long *stack,
    unsigned long *irq_stack, unsigned long *irq_stack_end)
{
 return bp;
}
