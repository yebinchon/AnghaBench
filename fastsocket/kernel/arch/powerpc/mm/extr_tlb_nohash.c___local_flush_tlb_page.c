
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned int MMU_NO_CONTEXT ;
 int _tlbil_va (unsigned long,unsigned int,int,int) ;
 int preempt_disable () ;
 int preempt_enable () ;

void __local_flush_tlb_page(struct mm_struct *mm, unsigned long vmaddr,
       int tsize, int ind)
{
 unsigned int pid;

 preempt_disable();
 pid = mm ? mm->context.id : 0;
 if (pid != MMU_NO_CONTEXT)
  _tlbil_va(vmaddr, pid, tsize, ind);
 preempt_enable();
}
