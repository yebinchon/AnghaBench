
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tss_struct {int dummy; } ;
struct thread_struct {int sp0; } ;
struct multicall_space {int mc; } ;


 int MULTI_stack_switch (int ,int ,int ) ;
 int PARAVIRT_LAZY_CPU ;
 int __KERNEL_DS ;
 struct multicall_space xen_mc_entry (int ) ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_load_sp0(struct tss_struct *tss,
    struct thread_struct *thread)
{
 struct multicall_space mcs = xen_mc_entry(0);
 MULTI_stack_switch(mcs.mc, __KERNEL_DS, thread->sp0);
 xen_mc_issue(PARAVIRT_LAZY_CPU);
}
