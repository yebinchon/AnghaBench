
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int dummy; } ;


 int __vmx_load_host_state (struct vcpu_vmx*) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void vmx_load_host_state(struct vcpu_vmx *vmx)
{
 preempt_disable();
 __vmx_load_host_state(vmx);
 preempt_enable();
}
