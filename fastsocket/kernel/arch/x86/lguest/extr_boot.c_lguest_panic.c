
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int LGUEST_SHUTDOWN_POWEROFF ;
 int LHCALL_SHUTDOWN ;
 int NOTIFY_DONE ;
 int __pa (void*) ;
 int kvm_hypercall2 (int ,int ,int ) ;

__attribute__((used)) static int lguest_panic(struct notifier_block *nb, unsigned long l, void *p)
{
 kvm_hypercall2(LHCALL_SHUTDOWN, __pa(p), LGUEST_SHUTDOWN_POWEROFF);

 return NOTIFY_DONE;
}
