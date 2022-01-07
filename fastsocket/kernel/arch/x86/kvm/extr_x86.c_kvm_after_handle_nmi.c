
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int current_vcpu ;
 int percpu_write (int ,int *) ;

void kvm_after_handle_nmi(struct kvm_vcpu *vcpu)
{
 percpu_write(current_vcpu, ((void*)0));
}
