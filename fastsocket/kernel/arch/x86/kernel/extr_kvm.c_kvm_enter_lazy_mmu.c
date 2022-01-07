
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int paravirt_enter_lazy_mmu () ;

__attribute__((used)) static void kvm_enter_lazy_mmu(void)
{
 paravirt_enter_lazy_mmu();
}
