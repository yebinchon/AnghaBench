
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PARAVIRT_LAZY_NONE ;
 int async_hcall (unsigned long,unsigned long,unsigned long,int ,int ) ;
 int kvm_hypercall2 (unsigned long,unsigned long,unsigned long) ;
 scalar_t__ paravirt_get_lazy_mode () ;

__attribute__((used)) static void lazy_hcall2(unsigned long call,
         unsigned long arg1,
         unsigned long arg2)
{
 if (paravirt_get_lazy_mode() == PARAVIRT_LAZY_NONE)
  kvm_hypercall2(call, arg1, arg2);
 else
  async_hcall(call, arg1, arg2, 0, 0);
}
