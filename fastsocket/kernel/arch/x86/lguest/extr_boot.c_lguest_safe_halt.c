
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LHCALL_HALT ;
 int kvm_hypercall0 (int ) ;

__attribute__((used)) static void lguest_safe_halt(void)
{
 kvm_hypercall0(LHCALL_HALT);
}
