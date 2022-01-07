
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tss_struct {int dummy; } ;
struct thread_struct {int sp0; } ;


 int LHCALL_SET_STACK ;
 int PAGE_SIZE ;
 int THREAD_SIZE ;
 int __KERNEL_DS ;
 int lazy_hcall3 (int ,int,int ,int) ;

__attribute__((used)) static void lguest_load_sp0(struct tss_struct *tss,
       struct thread_struct *thread)
{
 lazy_hcall3(LHCALL_SET_STACK, __KERNEL_DS | 0x1, thread->sp0,
     THREAD_SIZE / PAGE_SIZE);
}
