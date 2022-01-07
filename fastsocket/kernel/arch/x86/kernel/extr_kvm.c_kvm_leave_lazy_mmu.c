
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_para_state {int dummy; } ;


 struct kvm_para_state* kvm_para_state () ;
 int mmu_queue_flush (struct kvm_para_state*) ;
 int paravirt_leave_lazy_mmu () ;

__attribute__((used)) static void kvm_leave_lazy_mmu(void)
{
 struct kvm_para_state *state = kvm_para_state();

 mmu_queue_flush(state);
 paravirt_leave_lazy_mmu();
}
