
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_buf; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;


 int printk (char*,int ) ;

__attribute__((used)) static int handle_vcpu_debug(struct kvm_vcpu *vcpu,
    struct kvm_run *kvm_run)
{
 printk("VMM: %s", vcpu->arch.log_buf);
 return 1;
}
