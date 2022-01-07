
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LHCALL_FLUSH_ASYNC ;
 int kvm_hypercall0 (int ) ;
 int paravirt_leave_lazy_mmu () ;

__attribute__((used)) static void lguest_leave_lazy_mmu_mode(void)
{
 kvm_hypercall0(LHCALL_FLUSH_ASYNC);
 paravirt_leave_lazy_mmu();
}
