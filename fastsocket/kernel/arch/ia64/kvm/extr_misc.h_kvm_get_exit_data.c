
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exit_ctl_data {int dummy; } ;
struct TYPE_2__ {struct exit_ctl_data exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static inline struct exit_ctl_data *kvm_get_exit_data(struct kvm_vcpu *vcpu)
{
 return &vcpu->arch.exit_data;
}
