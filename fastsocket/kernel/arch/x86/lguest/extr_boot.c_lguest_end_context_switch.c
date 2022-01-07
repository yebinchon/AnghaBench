
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int LHCALL_FLUSH_ASYNC ;
 int kvm_hypercall0 (int ) ;
 int paravirt_end_context_switch (struct task_struct*) ;

__attribute__((used)) static void lguest_end_context_switch(struct task_struct *next)
{
 kvm_hypercall0(LHCALL_FLUSH_ASYNC);
 paravirt_end_context_switch(next);
}
