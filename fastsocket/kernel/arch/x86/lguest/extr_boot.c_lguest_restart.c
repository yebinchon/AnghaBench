
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LGUEST_SHUTDOWN_RESTART ;
 int LHCALL_SHUTDOWN ;
 int __pa (char*) ;
 int kvm_hypercall2 (int ,int ,int ) ;

__attribute__((used)) static void lguest_restart(char *reason)
{
 kvm_hypercall2(LHCALL_SHUTDOWN, __pa(reason), LGUEST_SHUTDOWN_RESTART);
}
