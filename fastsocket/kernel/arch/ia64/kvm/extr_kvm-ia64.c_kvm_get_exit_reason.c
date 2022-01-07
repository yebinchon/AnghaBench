
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kvm_vcpu {int dummy; } ;
struct exit_ctl_data {int exit_reason; } ;


 struct exit_ctl_data* kvm_get_exit_data (struct kvm_vcpu*) ;

__attribute__((used)) static uint32_t kvm_get_exit_reason(struct kvm_vcpu *vcpu)
{
 struct exit_ctl_data *p_exit_data;

 p_exit_data = kvm_get_exit_data(vcpu);
 return p_exit_data->exit_reason;
}
